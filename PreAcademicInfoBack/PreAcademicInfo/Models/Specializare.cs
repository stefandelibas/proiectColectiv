﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PreAcademicInfo.Models
{
    public enum SpecializareType { MASTER, LICENTA, DOCTORAT }
    public enum Limba { ROMANA,ENGLEZA,MAGHIARA,GERMANA }

    public class Specializare
    {
        [Required]
        public String Nume { get; set; }

        [Required]
        public Faculty Faculty { get; set; }

        [Required]
        public SpecializareType Type { get; set; }

        [Required]
        public Limba Limba { get; set; }

        [Required]
        public Int32 NumarSemestre { get; set; }

        [Required]
        public Double TaxaPerCredit { get; set; }

        public Admin Admin { get; set; }

        [DefaultValue("true")]
        public Boolean CuFrecventa { get; set; }

    }
}
