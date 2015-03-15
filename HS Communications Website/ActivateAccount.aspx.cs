using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website
{
    public partial class ActivateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string password;
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            ErrorPanel.Visible = false;
           
            var constring =
                System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conss = constring.ConnectionString;

            SqlConnection con = new SqlConnection(conss);
            SqlConnection con1 = new SqlConnection(conss);
            SqlConnection conP = new SqlConnection(conss);
            SqlConnection conPins = new SqlConnection(conss);

            con.Close();
            con.Open();
            
            SqlCommand search = new SqlCommand("Select * from students where studentno = '"+userTxtbox.Text+"' and email = '"+emailTxtbox.Text+"' and activated = '0'",con);
            
            SqlDataReader red = search.ExecuteReader();

            if(red.Read())
            {
                password = "123";
                // send password to email and insert into useraccounts
                con1.Close();
                con1.Open();
                string fulln = red.GetString(4) + " " + red.GetString(6);
                string ParentName = "Mr./Mrs. " + red.GetString(6);
                SqlCommand ins = new SqlCommand("Insert into useraccounts values('" + userTxtbox.Text + "','" + fulln + "','" + password + "','" + userTxtbox.Text + "'), ('" + userTxtbox.Text + "P" + "','" + ParentName + "','12345','" + userTxtbox.Text + "')", con1);
                ins.ExecuteNonQuery();

                conP.Close();
                conP.Open();
                
              
                SqlCommand upd = new SqlCommand("update students set activated = '1' where StudentNo = '"+userTxtbox.Text+"'", conP);
                upd.ExecuteNonQuery();
                conP.Close();

                conPins.Close();
                conPins.Open();
                SqlCommand ins2 = new SqlCommand("Insert into pDetailsTbl values('" + userTxtbox.Text + "')", conPins);
                ins2.ExecuteNonQuery();
                conPins.Close();

                Panel1.Visible = true;
             //   SucLbl.Text = "Student Account and Parent Account is Successfully Activated";
            }
            else
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = "Incorrect UserId/Username or Email";
            }

        }

       }
}