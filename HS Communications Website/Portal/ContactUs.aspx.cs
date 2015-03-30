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
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string conString = ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;

        protected void sendMsgBtn_Click(object sender, EventArgs e)
        {

            try
            {
                Panel1.Visible = false;
                ErrorPanel.Visible = false;


                SqlConnection con = new SqlConnection(conString);
                con.Close();
                con.Open();

                //insert all parent/student
                SqlCommand ins =
                    new SqlCommand(
                        "Insert into personalMsgTbl values('" + Session["studno"] + "','" + Session["name"] + "','" +
                        TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now + "','0','Unread')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Panel1.Visible = true;

                TextBox1.Text = "";
                TextBox2.Text = "";

                ListView1.DataBind();


            }
            catch (Exception ex)
            {

                ErrorPanel.Visible = true;
                ErrorLabel.Text = ex.Message;

            }
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

            SqlConnection con = new SqlConnection(conString);

            try
            {
                HiddenField hid = (HiddenField) (e.Item.FindControl("HiddenField1"));

                if (e.CommandName == "read")
                {
                    con.Close();
                    con.Open();

                    SqlCommand qw =
                        new SqlCommand("update personalMsgtbl set status = 'read' where msgID = '" + hid.Value + "'",
                                       con);
                    qw.ExecuteNonQuery();

                    con.Close();
                    Session["msgid"] = hid.Value;
                    Response.Redirect("ReplyMessage.aspx");

                }

                if (e.CommandName == "del")
                {
                    con.Close();
                    con.Open();

                    SqlCommand qw = new SqlCommand("delete from personalMsgTbl where ID = '" + hid.Value + "'", con);
                    qw.ExecuteNonQuery();
                    ErrorPanel.Visible = true;
                    ErrorLabel.Text = "Message successfully Deleted!";
                    //   SyllaUploadListview.DataBind();
                    ListView1.DataBind();
                    //  dataload();

                }
            }
            catch (Exception er)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = er.Message;
                //   throw;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}