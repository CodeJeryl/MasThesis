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
    public partial class SendMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList2.Visible = false;
            seclbl.Visible = false;
            //test sessions
            //   Session["level"] = "Principal";
            //   Session["name"] = "Jeryl Pogi";
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

            if (DropDownList1.Text == "all")
            {
              con.Close();
                con.Open();

                //insert all parent/student
                SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"] + "','true','all','false','" + DateTime.Now.ToShortDateString() + "'),('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','all','false','" + DateTime.Now.ToShortDateString() + "'),('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','faculty','false','" + DateTime.Now.ToShortDateString() + "')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Panel1.Visible = true;

                
                DropDownList2.Visible = false;
                titleTxtbox.Text = "";
                messageTxtbox.Text = "";

            }
            else if (DropDownList1.Text == "students")
            {
                if(CheckBox1.Checked)
                {
                 con.Close();
                con.Open();

                //insert all parent/student
                SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','"+DropDownList2.Text+"','false','"+DateTime.Now.ToShortDateString()+"')", con);
                ins.ExecuteNonQuery();

                con.Close();
                }
                else
                {
                    con.Close();
                    con.Open();

                    //insert all parent/student
                    SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','all','false','" + DateTime.Now.ToShortDateString() + "')", con);
                    ins.ExecuteNonQuery();

                    con.Close();
                }


                Panel1.Visible = true;

              
                DropDownList2.Visible = false;
                titleTxtbox.Text = "";
                messageTxtbox.Text = "";
            }
            else if (DropDownList1.Text == "parents")
            {
                if (CheckBox1.Checked)
                {
                    con.Close();
                    con.Open();

                    //insert all parent/student
                    SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','true','" + DropDownList2.Text + "','false','" + DateTime.Now.ToShortDateString() + "')", con);
                    ins.ExecuteNonQuery();

                    con.Close();
                }
                else
                {

                    con.Close();
                    con.Open();

                    //insert all parent/student
                    SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','true','all','false','" + DateTime.Now.ToShortDateString() + "')", con);
                    ins.ExecuteNonQuery();

                    con.Close();
                    
                }

                Panel1.Visible = true;

                
                DropDownList2.Visible = false;
                titleTxtbox.Text = "";
                messageTxtbox.Text = "";
            }
            else if (DropDownList1.Text == "faculty")
            {
                con.Close();
                con.Open();

                //insert all parent/student
                SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','faculty','false','" + DateTime.Now.ToShortDateString() + "')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Panel1.Visible = true;

             
                DropDownList2.Visible = false;
                titleTxtbox.Text = "";
                messageTxtbox.Text = "";
            }
            }
            catch (Exception ex)
            {

                ErrorPanel.Visible = true;
                ErrorLabel.Text = ex.Message;

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.Text == "all")
            {
                DropDownList2.Visible = false;
                seclbl.Visible = false;
                CheckBox1.Visible = false;
                CheckBox1.Checked = false;
            }
            else if(DropDownList1.Text == "students")
            {
                CheckBox1.Visible = true;
            }
            else if(DropDownList1.Text == "parents")
            {
                CheckBox1.Visible = true;
                //DropDownList2.Visible = true;
                //seclbl.Visible = true;
            }
            else if (DropDownList1.Text == "faculty")
            {
                DropDownList2.Visible = false;
                seclbl.Visible = false;
                CheckBox1.Visible = false;
                CheckBox1.Checked = false;
            }
            else
            {
              CheckBox1.Checked = true;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked)
            {
            DropDownList2.Visible = true;
            seclbl.Visible = true;
            }
            else
            {
                DropDownList2.Visible = false;
                seclbl.Visible = false;
            }
        }
        
    }
}