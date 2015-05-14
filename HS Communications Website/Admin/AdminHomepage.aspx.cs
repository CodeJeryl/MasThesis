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

       
    }
}