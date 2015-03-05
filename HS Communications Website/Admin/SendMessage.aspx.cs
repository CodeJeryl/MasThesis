﻿using System;
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
            //https://www.nitroflare.com/view/7AAF25C42A95629/Fifty.Shades.of.Grey.1080pcoaster.avi
            //test sessions
            Session["level"] = "Principal";
            Session["name"] = "Jeryl Pogi";
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
                SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"] + "','true','all','false'),('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','all','false'),('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','faculty','false')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Panel1.Visible = true;

                
                DropDownList2.Visible = false;
                titleTxtbox.Text = "";
                messageTxtbox.Text = "";

            }
            else if (DropDownList1.Text == "students")
            {
            con.Close();
                con.Open();

                //insert all parent/student
                SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','"+DropDownList2.Text+"','false')", con);
                ins.ExecuteNonQuery();

                con.Close();

                Panel1.Visible = true;

              
                DropDownList2.Visible = false;
                titleTxtbox.Text = "";
                messageTxtbox.Text = "";
            }
            else if (DropDownList1.Text == "parents")
            {
                con.Close();
                con.Open();

                //insert all parent/student
                SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','true','" + DropDownList2.Text + "','false')", con);
                ins.ExecuteNonQuery();

                con.Close();

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
                SqlCommand ins = new SqlCommand("Insert into msgTbl values('" + titleTxtbox.Text + "','" + messageTxtbox.Text + "','" + Session["name"] + "','" + Session["level"].ToString() + "','false','faculty','false')", con);
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
            }
            else if(DropDownList1.Text == "students")
            {
                DropDownList2.Visible = true;
            }
            else if(DropDownList1.Text == "parents")
            {
                DropDownList2.Visible = true;
            }
            else if (DropDownList1.Text == "faculty")
            {
                DropDownList2.Visible = false;
            }
            else
            {
                DropDownList2.Visible = true;
            }
        }
    }
}