using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace HS_Communications_Website.Admin
{
    public partial class AdminHomepage : System.Web.UI.Page
    {
        SqlConnection con;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetChartData();
                GetChartDataSc();

            }
        }

        string conss =
                   System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;
  
        private void GetChartData()
        {
           
            con = new SqlConnection(conss);
            SqlCommand cmd = new SqlCommand("Select townAdd,Count(*) as Number from Students where townadd is not NULL group by townAdd ", con);
            con.Open();
            Series series = Chart1.Series["Series1"];
            SqlDataReader red = cmd.ExecuteReader();

            while (red.Read())
            {
                series.Points.AddXY(red["townAdd"].ToString(), red["Number"]);

            }
        }
        private void GetChartDataSc()
        {
            var constring =
                System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conss = constring.ConnectionString;


            con = new SqlConnection(conss);
            SqlCommand cmd = new SqlCommand("Select scLastAttend,Count(*) as Number from Students where scLastAttend is not NULL group by scLastAttend ", con);
            con.Open();
            Series series = Chart2.Series["Series1"];
            SqlDataReader red = cmd.ExecuteReader();

            while (red.Read())
            {
                series.Points.AddXY(red["scLastAttend"].ToString(), red["Number"]);

            }
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

            SqlConnection con = new SqlConnection(conss);

            try
            {
                HiddenField hid = (HiddenField)(e.Item.FindControl("HiddenField1"));
                HiddenField studid = (HiddenField)(e.Item.FindControl("HiddenField2"));
                if (e.CommandName == "read")
                {
                    con.Close();
                    con.Open();

                    SqlCommand qw = new SqlCommand("update personalMsgtbl set status = 'read' where msgID = '" + hid.Value + "'", con);
                    qw.ExecuteNonQuery();

                    con.Close();

                    Session["msgid"] = hid.Value;
                    Session["studid"] = studid.Value;
                    Response.Redirect("Message.aspx");
                    
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