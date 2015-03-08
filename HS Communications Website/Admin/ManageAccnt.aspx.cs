using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Admin
{
    public partial class ManageAccnt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

           
            Panel1.Visible = false;
            ErrorPanel.Visible = false;
            var strcon = ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conString = strcon.ConnectionString;


            SqlConnection con = new SqlConnection(conString);

            con.Close();
            con.Open();

            //insert all parent/student
            SqlCommand update2 =
                new SqlCommand("Update FacTbl set Disabled = '" + DropDownList2.SelectedValue + "' where fcode = '" + DropDownList1.SelectedValue + "'", con);
            update2.ExecuteNonQuery();

            con.Close();

            Label1.Text = DropDownList1.SelectedItem +" account is successfully "+ DropDownList2.SelectedItem;
            Panel1.Visible = true;
            }
            catch (Exception er)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = er.Message;
            }
        }
    }
}