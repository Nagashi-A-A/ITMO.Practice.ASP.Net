using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ITMO.WebCourse.Yaroshchuk.ExamApp
{
    public class FormContext : DbContext
    {
        public FormContext() : base("PerformanceBD") { }
        public DbSet<StudentForm> StudentForms { get; set; }
        public DbSet<StudentScore> StudentScores { get; set; }
    }
}