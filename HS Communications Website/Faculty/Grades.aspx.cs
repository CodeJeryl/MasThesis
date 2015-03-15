using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Faculty
{
    public partial class Grades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

            try
            {


                if (e.CommandName == "open")
                {
                    Label sectno = (Label) (e.Item.FindControl("SectnoLabel"));
                    Label subcode = (Label) (e.Item.FindControl("SubcodeLabel"));
                        
                 Session["sectno"] = sectno.Text;
                    Session["subcode"] = subcode.Text;
                    Response.Redirect("AddGrades.aspx");

                }


            }
            catch (Exception ee)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ee.Message;
            }
        }
    }
}