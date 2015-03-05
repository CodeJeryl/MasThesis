﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {

            var strcon = ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conString = strcon.ConnectionString;


            SqlConnection conek = new SqlConnection(conString);
            SqlConnection conek1 = new SqlConnection(conString);
            SqlConnection conek2 = new SqlConnection(conString);

            try
            {
                conek.Close();
                conek.Open();
                SqlCommand comsearch =
                    new SqlCommand(
                        "Select * From facTbl where username = '" + usernameTxtbox.Text + "' and password = '" +
                        passTxtbox.Text + "'", conek);
                SqlDataReader rd = comsearch.ExecuteReader();
                if (rd.Read())
                {
                    //  has = rd.GetString(2);
                    string level = rd.GetString(3);
                    Session["name"] = rd.GetString(4);
                    if (level == "Principal")
                    {
                        Session["Adviser"] = "1";
                        Session["level"] = "Principal";
                        Session["username"] = rd.GetString(2);
                        //conek1.Close();
                        //conek1.Open();

                        //SqlCommand com = new SqlCommand("update adminol set online = '" + 1 + "'", conek1);

                        // com.ExecuteNonQuery();
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(usernameTxtbox.Text, false);
                        System.Web.Security.FormsAuthentication.SetAuthCookie(usernameTxtbox.Text, false);
                        System.Web.Security.FormsAuthentication.GetAuthCookie(usernameTxtbox.Text, false);

                        Response.Redirect("~/Faculty/Fhomepage.aspx", false);
                    }
                    else if (level == "Adviser")
                    {

                        //Session["customerID"] = rd.GetInt32(0);
                        //Session["email"] = rd.GetString(1);
                        //Session["name"] = rd.GetString(3);
                        //Session["address"] = rd.GetString(9);

                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(usernameTxtbox.Text, false);
                        System.Web.Security.FormsAuthentication.SetAuthCookie(usernameTxtbox.Text, false);
                        System.Web.Security.FormsAuthentication.GetAuthCookie(usernameTxtbox.Text, false);

                        Response.Redirect("~/Faculty/Fhomepage.aspx", false);
                    }
                    else if (level == "Teacher")
                    {

                        //Session["customerID"] = rd.GetInt32(0);
                        //Session["email"] = rd.GetString(1);
                        //Session["name"] = rd.GetString(3);
                        //Session["address"] = rd.GetString(9);

                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(usernameTxtbox.Text, false);
                        System.Web.Security.FormsAuthentication.SetAuthCookie(usernameTxtbox.Text, false);
                        System.Web.Security.FormsAuthentication.GetAuthCookie(usernameTxtbox.Text, false);

                        Response.Redirect("~/Faculty/Fhomepage.aspx", false);
                    }

                }
                else
                {
                    conek1.Close();
                    conek1.Open();

                    rd.Close();

                    SqlCommand comsearch1 =
                        new SqlCommand(
                            "Select * From LoginView where username = '" + usernameTxtbox.Text + "' and password = '" +
                            passTxtbox.Text + "' and activated = 1", conek1);
                    SqlDataReader rd1 = comsearch1.ExecuteReader();
                    if (rd1.Read())
                    {
                        char last = usernameTxtbox.Text[usernameTxtbox.Text.Length - 1];
                        if (last.ToString() == "P")
                        {
                            Session["studno"] = rd1.GetInt32(0);
                            Session["name"] = rd1.GetString(1);
                            Session["username"] = rd1.GetString(2);
                            Session["section"] = rd1.GetString(4);
                            Session["year"] = rd1.GetInt32(5);
                            Session["Parent"] = "true";

                            //conek1.Close();
                            //conek1.Open();
                            //SqlCommand com = new SqlCommand("update adminol set online = '" + 1 + "'", conek1);

                            // com.ExecuteNonQuery();
                            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(usernameTxtbox.Text, false);
                            System.Web.Security.FormsAuthentication.SetAuthCookie(usernameTxtbox.Text, false);
                            System.Web.Security.FormsAuthentication.GetAuthCookie(usernameTxtbox.Text, false);

                            Response.Redirect("~/Portal/Phomepage.aspx", false);
                        }
                        else
                        {
                            Session["studno"] = rd1.GetInt32(0);
                            Session["name"] = rd1.GetString(1);
                            Session["username"] = rd1.GetString(2);
                            Session["section"] = rd1.GetString(4);
                            Session["year"] = rd1.GetInt32(5);
                            Session["Parent"] = "false";

                            //conek1.Close();
                            //conek1.Open();
                            //SqlCommand com = new SqlCommand("update adminol set online = '" + 1 + "'", conek1);

                            // com.ExecuteNonQuery();
                            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(usernameTxtbox.Text, false);
                            System.Web.Security.FormsAuthentication.SetAuthCookie(usernameTxtbox.Text, false);
                            System.Web.Security.FormsAuthentication.GetAuthCookie(usernameTxtbox.Text, false);

                            Response.Redirect("~/Portal/Phomepage.aspx", false);
                        }
                    }
                    else
                    {
                        errorLbl.Text = "not yet activated or not exists";
                    }
                }

            }
            catch (Exception ee)
            {
                errorLbl.Text = ee.Message;
            }
        }


    }
}