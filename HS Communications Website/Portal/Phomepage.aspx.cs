using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Portal
{
    public partial class Phomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //      Label1.Text = Session["section"].ToString();
            

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            try
            {


                var constr =
                    System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection(constr);

                if (e.CommandName == "readd")
                {

                    HiddenField hid = (HiddenField)(e.Item.FindControl("HiddenField1"));

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