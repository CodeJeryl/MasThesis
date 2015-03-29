using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Faculty
{
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["msgid"] == null)
                {
                    Response.Redirect("Fhomepage.aspx");
                }
                else
                {
                    var constring =
                       System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
                    string conss = constring.ConnectionString;

                    SqlConnection con = new SqlConnection(conss);

                    con.Close();
                    con.Open();
                    SqlCommand check = new SqlCommand("Select * from msgTbl where MsgId = '" + Convert.ToInt32(Session["msgid"].ToString()) + "'", con);
                    SqlDataReader er = check.ExecuteReader();

                    if (er.Read())
                    {
                        titleLbl.Text = er.GetString(1);
                        bodyLbl.Text = er.GetString(2).Replace(Environment.NewLine, "<br/>");
                        fromLbl.Text = er.GetString(3);
                        dateLbl.Text = er.GetDateTime(8).ToShortDateString();
                        }
                    else
                    {
                        ErrorPanel.Visible = true;
                        ErrorLabel.Text = "Please choose a message from Inbox";
                    }
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