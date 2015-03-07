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
    public partial class AddTeachers : System.Web.UI.Page
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
                SqlCommand ins =
                    new SqlCommand(
                        "Insert into FacTbl values('" + Convert.ToInt32(empIDtxtbox.Text) + "','" + passwordTxtbox.Text +
                        "','" + DropDownList1.Text + "','" + nameTxtbox.Text + "','" + CheckBox1.Checked + "')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Panel1.Visible = true;


                CheckBox1.Checked = false;
                empIDtxtbox.Text = "";
                passwordTxtbox.Text = "";
                nameTxtbox.Text = "";

            }
            catch (Exception ds)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ds.Message;
            }
        }
    }
}