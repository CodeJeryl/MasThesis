using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Admin
{
    public partial class PrintStudent : System.Web.UI.Page
    {
        Report1 re = new Report1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportViewer1.ReportSource = re;
                ReportViewer1.RefreshReport();
            }

        }
    }
}