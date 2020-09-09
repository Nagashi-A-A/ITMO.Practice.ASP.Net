using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ITMO.G124.ASP.NET.Yaroshchuk.Lab1
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Visitors"] = 0;
            Application["Visitors"] = long.Parse(Application["Visitors"].ToString()) + 1;
        }
    }
}