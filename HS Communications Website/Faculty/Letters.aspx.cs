using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Faculty
{
    public partial class Letters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        byte[] by;
        string filename;
        string content;
        string conString = ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;
        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);

            try
            {
                HiddenField hid = (HiddenField)(e.Item.FindControl("HiddenField1"));

                if (e.CommandName == "dl")
                {
                    con.Close();
                    con.Open();

                    SqlCommand qw = new SqlCommand("select * from uploadedFiles where ID = '" + hid.Value + "'", con);
                    SqlDataReader dd = qw.ExecuteReader();

                    while (dd.Read())
                    {
                        filename = dd.GetString(3);
                        content = dd.GetString(5);
                        by = (Byte[])dd["data"];
                    }

                    con.Close();

                    Response.Buffer = true;

                    Response.Charset = "";

                    Response.Cache.SetCacheability(HttpCacheability.NoCache);

                    Response.ContentType = content;

                    Response.AddHeader("content-disposition", "attachment;filename=" + filename);

                    Response.BinaryWrite(by);

                    Response.Flush();

                    Response.End();
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