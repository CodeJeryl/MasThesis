using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Portal
{
    public partial class ReplyMessage : System.Web.UI.Page
    {
        string conss =
          ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;
   
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["msgid"] == null)
                {
                    Response.Redirect("Phomepage.aspx");
                }
                else
                {
                    SqlConnection con = new SqlConnection(conss);

                    con.Close();
                    con.Open();
                    SqlCommand check = new SqlCommand("Select * from personalMsgTbl where MsgId = '" + Convert.ToInt32(Session["msgid"].ToString()) + "'", con);
                    SqlDataReader er = check.ExecuteReader();

                    if (er.Read())
                    {
                        titleLbl.Text = er.GetString(3);
                        bodyLbl.Text = er.GetString(4).Replace(Environment.NewLine, "<br/>");
                        fromLbl.Text = er.GetString(2);
                        dateLbl.Text = er.GetDateTime(5).ToString();
                        
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Panel1.Visible = false;
                ErrorPanel.Visible = false;

                SqlConnection con = new SqlConnection(conss);

                string titl = "RE: " + titleLbl.Text;
                con.Close();
                con.Open();

                //insert all parent/student
                SqlCommand ins =
                    new SqlCommand(
                        "Insert into personalMsgTbl values('" + Session["studno"] + "','" + Session["name"].ToString() + "','" +
                         titl + "','" + repTxtbox.Text + "','" + DateTime.Now.ToShortDateString() + "','false','Unread')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Panel1.Visible = true;

                repTxtbox.Text = "";

            }
            catch (Exception ex)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ex.Message;
           }
        }
    }
}