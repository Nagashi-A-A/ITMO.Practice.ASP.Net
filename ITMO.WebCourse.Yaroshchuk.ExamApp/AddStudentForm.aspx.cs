using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMO.WebCourse.Yaroshchuk.ExamApp
{
    public partial class AddStudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;
                StudentForm stForm = new StudentForm(StFirstName.Text, StLastName.Text, groupNumber.Text);
                StudentRepos.GetRepo().AddForm(stForm);

                int fScore = 0 + int.Parse(TextBoxWF.Text);
                int sScore = 0 + int.Parse(TextBoxConApp.Text);
                int trdScore = 0 + int.Parse(TextBoxASP.Text);
                int frScore = 0 + int.Parse(TextBoxTSQL.Text);
                int fvScore = 0 + int.Parse(TextBoxADO.Text);


                try
                {
                    StudentScore studentScore = new StudentScore(fScore, sScore, trdScore, frScore, fvScore);
                    stForm.SttScore.Add(studentScore);

                    FormContext context = new FormContext();
                    context.StudentForms.Add(stForm);
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    ExcpLabel.Text = ex.Message;
                }

                Response.Redirect("FormWasAdded.aspx");
            }
        }
    }
}