﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AcademicInfoServerEF22EF22.Models
{
    public class Group
    {
        [Required, Key]
        public Int32 Id { get; set; }

        [Required]
        public String GroupName { get; set; }

        [Required]
        public String NumeSpecializare { get; set; }
        
        //public ICollection<FacultyEnroll> FacultiesEnrolments { get; set; }
    }
}
