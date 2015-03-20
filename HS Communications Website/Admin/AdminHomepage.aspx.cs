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

    
        private void GetChartData()
        {
            var constring =
                System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conss = constring.ConnectionString;


            con = new SqlConnection(conss);
          SqlCommand  cmd = new SqlCommand("Select * from CountTown", con);
            con.Open();
            Series series = Chart1.Series["Series1"];
            SqlDataReader red = cmd.ExecuteReader();

            while (red.Read())
            {
                series.Points.AddXY(red["town"].ToString(), red["Number"]);

            }
        }
        private void GetChartDataSc()
        {
            var constring =
                System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conss = constring.ConnectionString;


            con = new SqlConnection(conss);
            SqlCommand cmd = new SqlCommand("Select * from CountOldSc", con);
            con.Open();
            Series series = Chart2.Series["Series1"];
            SqlDataReader red = cmd.ExecuteReader();

            while (red.Read())
            {
                series.Points.AddXY(red["oldschool"].ToString(), red["Number"]);

            }
        }
    }
}