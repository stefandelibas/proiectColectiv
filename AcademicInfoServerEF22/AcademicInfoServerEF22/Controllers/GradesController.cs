﻿using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using AcademicInfoServerEF22EF22.Models;
namespace AcademicInfoServerEF22EF22.Controllers
{
    [Produces("application/json")]
    [Route("api/Grades")]
    public class GradesController : Controller
    {
        private readonly AcademicInfoContext _context;

        public GradesController(AcademicInfoContext context)
        {
            _context = context;
        }

        // GET: api/Grades
        [HttpGet]
        public IEnumerable<Grade> GetGrade()
        {
            return _context.Grade;
        }

        // GET: api/Grades/5
        //[HttpGet("{id}")]
        //public async Task<IActionResult> GetGrade([FromRoute] int id)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    var grade = await _context.Grade.SingleOrDefaultAsync(m => m.Id == id);

        //    if (grade == null)
        //    {
        //        return NotFound();
        //    }

        //    return Ok(grade);
        //}

        // GET: api/Grades/username
        [HttpGet("{username}")]
        public IActionResult GetGradesOfStudent([FromRoute] string username)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            //Get the list of GradesToDiscipline for the student with the given username
            List<GradesToDiscipline> gradesToDiscipline = _context.Student.Where(
                s => s.Username.Equals(username)
            ).First().Grades.ToList();

            //Create a response List that will store all the grades as dictionaries
            var response = new List<Dictionary<string, string>>();

            //For each grade
            foreach (var gradeToDicipline in gradesToDiscipline)
            {
                foreach (var grade in gradeToDicipline.Grades)
                {
                    //If the grade is a FINAL grade
                    if (grade.Type.ToString().Equals("FINAL"))
                    {
                        //Create a local dictionary
                        var dict = new Dictionary<string, string>();

                        //Add the grade informations to the local dictionary
                        dict["numeMaterie"] = gradeToDicipline.Discipline.Nume;
                        dict["an"] = gradeToDicipline.Discipline.An.ToString();
                        dict["semestru"] = gradeToDicipline.Discipline.Semestru.ToString();
                        dict["nota"] = grade.GradeValue.ToString();
                        dict["nrCredite"] = gradeToDicipline.Discipline.Credite.ToString();
                        dict["dataPromovarii"] = grade.DataNotei;
                        dict["codMaterie"] = gradeToDicipline.Discipline.Cod.ToString();
                        dict["specializare"] = gradeToDicipline.Discipline.Specializare.Nume;

                        //Add the local dictionary to the list of grades
                        response.Add(dict);
                    }
                }
            }

            //Return the list of grades
            return Json(response);
        }
        [HttpPost]
        public async Task<IActionResult> PostGrade([FromBody] GradeRecived grade)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            grade.GradeFromJSONGrade();
            await _context.SaveChangesAsync();

            return Ok();
        }

        public class GradeRecived
        {
            public string username, grade, data, materie, tipNota;
            private AcademicInfoContext _context;

            public GradeRecived(string username, string grade, string data, string materie, string tipNota)
            {
                this.username = username;
                this.grade = grade;
                this.data = data;
                this.materie = materie;
                this.tipNota = tipNota;
            }

            public void setContext(AcademicInfoContext context)
            {
                this._context = context;
            }

            public void GradeFromJSONGrade()
            {
                GradesToDiscipline gtd = _context.GradeToDiscipline.Where(g => g.Discipline.Nume.Equals(this.materie)).FirstOrDefault();
                GradeType gt = GradeType.EXAMEN;
                if (tipNota == "Examen final")
                {
                    gt = GradeType.EXAMEN;
                }
                else if (tipNota == "Laborator")
                {
                    gt = GradeType.LAB;
                }
                //to be added

                Grade grade = new Grade()
                {
                    GradeValue = double.Parse(this.grade),
                    DataNotei = this.data,
                    Type = gt
                };

                if (gtd == null)
                {
                    gtd = new GradesToDiscipline() {
                        Discipline = _context.Discipline.Where(d => d.Nume.Equals(this.materie)).FirstOrDefault(),
                        Grades = new List<Grade>()
                    };
                    gtd.Grades.Add(grade);
                }
                else
                {
                    gtd.Grades.Add(grade);
                }
            }
        }


        // PUT: api/Grades/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutGrade([FromRoute] int id, [FromBody] Grade grade)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != grade.Id)
            {
                return BadRequest();
            }

            _context.Entry(grade).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GradeExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Grades
        [HttpPost]
        public async Task<IActionResult> PostGrade([FromBody] Grade grade)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Grade.Add(grade);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetGrade", new { id = grade.Id }, grade);
        }

        // DELETE: api/Grades/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteGrade([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var grade = await _context.Grade.SingleOrDefaultAsync(m => m.Id == id);
            if (grade == null)
            {
                return NotFound();
            }

            _context.Grade.Remove(grade);
            await _context.SaveChangesAsync();

            return Ok(grade);
        }

        private bool GradeExists(int id)
        {
            return _context.Grade.Any(e => e.Id == id);
        }
    }
}