using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Faculty
{
    public partial class Fhomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Label1.Text = Session["name"].ToString();

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            try
            {


             if (e.CommandName == "readd")
                {

                    HiddenField hid = (HiddenField) (e.Item.FindControl("HiddenField1"));

                    Session["msgid"] = hid.Value;
                    Response.Redirect("Message.aspx");

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