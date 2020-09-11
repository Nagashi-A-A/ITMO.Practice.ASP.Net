using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITMO.WebCourse.Yaroshchuk.ExamApp
{
    public class StudentRepos
    {
        private static StudentRepos repo = new StudentRepos();
        private List<StudentForm> studentList = new List<StudentForm>();
        public static StudentRepos GetRepo()
        {
            return repo;
        }
        public IEnumerable<StudentForm> GetAllForms()
        {
            return studentList;
        }
        public void AddForm(StudentForm stForm)
        {
            studentList.Add(stForm);
        }
    }
}