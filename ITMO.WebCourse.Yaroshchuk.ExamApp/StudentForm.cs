using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Dynamic;
using System.ComponentModel.DataAnnotations;

namespace ITMO.WebCourse.Yaroshchuk.ExamApp
{
    public class StudentForm
    {
        [Key] public int StudentId { get; set; }
        public string StudentFirstName { get; set; }
        public string StudentLastName { get; set; }
        public string GroupNumber { get; set; }
        public virtual List<StudentScore> SttScore { get; set; }
        public StudentForm(string name, string lastName, string gNumber)
        { StudentFirstName = name; StudentLastName = lastName; GroupNumber = gNumber; SttScore = new List<StudentScore>(); }
        public StudentForm() { }
    }

    public class StudentScore
    {
        [Key] public int StudentScoreId { get; set; }
        public int WinFormScore { get; set; }
        public int WinConsoleScore { get; set; }
        public int AspScore { get; set; }
        public int SqlScore { get; set; }
        public int AdoScore { get; set; }
        public int SumScore { get; set; }
        public StudentForm StForm { get; set; }
        public StudentScore() { }
        public StudentScore(int fScore, int sScore, int trdScore, int frScore, int fvScore) 
        {
            WinFormScore = fScore;
            WinConsoleScore = sScore;
            AspScore = trdScore;
            SqlScore = frScore;
            AdoScore = fvScore;
            SumScore = CountScore(fScore, sScore, trdScore, frScore, fvScore);
        }

        public int CountScore(int fScore, int sScore, int trdScore, int frScore, int fvScore)
        {
            int sumScore = fScore + sScore + trdScore + frScore + fvScore;
            return sumScore;
        }
    }
}