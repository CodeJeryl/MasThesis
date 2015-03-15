using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Portal
{
    public partial class GradesViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

         
        }

        protected void ListView1_ItemCreated(object sender, ListViewItemEventArgs e)
        {

            var constring =
                 System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conss = constring.ConnectionString;

            SqlConnection con = new SqlConnection(conss);

            con.Close();
            con.Open();
            SqlCommand check = new SqlCommand("Select d1,d2,d3,d4 from smtr", con);
            SqlDataReader er = check.ExecuteReader();

            if (er.Read())
            {
                Label lab1 = (Label)(e.Item.FindControl("firstLabel"));
                Label lab2 = (Label)(e.Item.FindControl("secondLabel"));
                Label lab3 = (Label)(e.Item.FindControl("thirdLabel"));
                Label lab4 = (Label)(e.Item.FindControl("fourthLabel"));

                lab1.Visible = Convert.ToBoolean(er.GetString(0));
                lab2.Visible = Convert.ToBoolean(er.GetString(1));
                lab3.Visible = Convert.ToBoolean(er.GetString(2));
                lab4.Visible = Convert.ToBoolean(er.GetString(3));

            }
        }

       
    }
}