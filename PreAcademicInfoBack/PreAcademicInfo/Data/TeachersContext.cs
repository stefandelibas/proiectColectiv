﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace PreAcademicInfo.Models
{
    public class TeachersContext : DbContext
    {
        public TeachersContext (DbContextOptions<TeachersContext> options)
            : base(options)
        {
        }

        public DbSet<PreAcademicInfo.Models.Teacher> Teacher { get; set; }
    }
}