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
                        "Insert into FacTbl values('" + empIDtxtbox.Text + "','" + passwordTxtbox.Text +
                        "','" + DropDownList1.Text + "','" + nameTxtbox.Text + "','" + CheckBox1.Checked + "')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Label1.Text = "Faculty Added Successfully!";
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

        protected void AdviserBtn_Click(object sender, EventArgs e)
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
                new SqlCommand("Update section set AdviserFcode = '"+DropDownList3.SelectedValue+"' where Sectno = '"+DropDownList2.Text+"'", con);
            update2.ExecuteNonQuery();

            con.Close();

            con.Open();

            SqlCommand update1 = new SqlCommand("Update FacTbl set Adviser = 'true', Advisory = '" + DropDownList2.SelectedValue + "' where fCode = '" + DropDownList3.SelectedValue + "'", con);
            update1.ExecuteNonQuery();

            Label1.Text = "Adviser Successfully Assigned!";
            Panel1.Visible = true;
        }
    }
}