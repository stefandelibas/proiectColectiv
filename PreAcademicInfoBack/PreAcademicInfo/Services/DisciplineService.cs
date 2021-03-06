﻿using PreAcademicInfo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PreAcademicInfo.Services
{
    public class DisciplineService
    {
        StudentContext context;

        public DisciplineService(StudentContext context)
        {
            this.context = context;
        }

        public List<Discipline> GetDisciplineBySpecializare(string specializare)
        {
            return context.Discipline.Where(d => d.Specializare.Nume == specializare).ToList();
        }

        public List<Grade> GetGradesByDiscipline(string discipline, string teacherUsername, string groupName)
        {
            List<int> gradesOfDiscipline =
                context.GradeToDiscipline.
                Where(g => g.Discipline.Nume == discipline && g.Discipline.Teacher.Username == teacherUsername)
                .FirstOrDefault()
                .Grades
                .Select(g => g.Id).ToList();

            return context
                .Grade
                .Where(g => gradesOfDiscipline.Contains(g.Id))
                .ToList();
        }

        public List<Grade> GetGradesAtDisciplineFromAGroup(string discipline, string teacherUsername, string groupName)
        {
            List<Grade> sg = context.Student.Where(s => groupName == s.FacultiesEnrolled.First().Group.GroupName)
               .SelectMany(s => s.Grades).Where(g => g.Discipline.Nume == discipline && g.Discipline.Teacher.Username == teacherUsername)
               .SelectMany(g => g.Grades).ToList();

            return sg;
        }

        public List<Tuple<Student, Grade>> GetGradesToADisciplineAndStudentsFromAGroup(string discipline, string teacherUsername, string groupName)
        {
            List<Tuple<Student, Grade>> StudentAndGrades = new List<Tuple<Student, Grade>>();
            List<Grade> grades = GetGradesAtDisciplineFromAGroup(discipline, teacherUsername, groupName);
            foreach (Student student in context.Student.Where(s => groupName == s.FacultiesEnrolled.First().Group.GroupName))
            {
                Grade grade = grades.Where(g => g.Student.NumarMatricol == student.NumarMatricol).Select(g => g).FirstOrDefault();
                StudentAndGrades.Add(new Tuple<Student,Grade>(student, grade));
            }
            return StudentAndGrades;
        }
    }
}
