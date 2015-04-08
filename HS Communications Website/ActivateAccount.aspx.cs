using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
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
                Random x = new Random();
                int y = x.Next();

              // password = "123";
                // send password to email and insert into useraccounts
                con1.Close();
                con1.Open();
                string fulln = red.GetString(4) + " " + red.GetString(6);
                string lastn = red.GetString(6);
                string ParentName = "Mr./Mrs. " + red.GetString(6);
                SqlCommand ins = new SqlCommand("Insert into useraccounts values('" + userTxtbox.Text + "','" + fulln + "','" + y.ToString() + "','" + userTxtbox.Text + "'), ('" + userTxtbox.Text + "P" + "','" + ParentName + "','" + lastn + "','" + userTxtbox.Text + "')", con1);
                ins.ExecuteNonQuery();

                conP.Close();
                conP.Open();
                
              
                SqlCommand upd = new SqlCommand("update students set activated = '1' where StudentNo = '"+userTxtbox.Text+"'", conP);
                upd.ExecuteNonQuery();
                conP.Close();

                conPins.Close();
                conPins.Open();
                SqlCommand ins2 = new SqlCommand("Insert into pDetailsTbl(studno) values('" + userTxtbox.Text + "')", conPins);
                ins2.ExecuteNonQuery();
                conPins.Close();

                string mess = this.PopulateBody(fulln, y.ToString(), userTxtbox.Text, lastn);
                // string mess = "Your Password: " + y.ToString() + "<br/> you can change your password after logging in.";

                sendEmail("JerylSuarez@letranbataan.edu.ph", emailTxtbox.Text, "", "", "HighSchool Communication Account Activation", mess);
              
                Panel1.Visible = true;
             //   SucLbl.Text = "Student Account and Parent Account is Successfully Activated";
            }
            else
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = "Incorrect UserId/Username or Email";
            }

        }

        private string PopulateBody(string name, string password,string id,string parentpass)
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("~/Mail/Send.html")))
            {
                body = reader.ReadToEnd();
            }

            body = body.Replace("{name}", name);
            body = body.Replace("{password}", password);
            body = body.Replace("{id}", id);
            body = body.Replace("{parentpass}", parentpass);
            return body;
        }

        public static void sendEmail(string sender, string recepient, string bcc, string cc, string subject, string body)
        {
            MailMessage email = new MailMessage();
            email.From = new MailAddress(sender);
            email.To.Add(new MailAddress(recepient));
            if (bcc != null && bcc != "") email.Bcc.Add(new MailAddress(bcc));
            if (cc != null && bcc != "") email.CC.Add(new MailAddress(cc));

            email.Subject = subject;
            email.Body = body;
            email.IsBodyHtml = true;
            email.Priority = MailPriority.Normal;
            SmtpClient client = new SmtpClient();
            // client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential(sender, "qwerqwer21");
            client.Port = 25;
            client.Host = "mail.letranbataan.com";
            client.Send(email);

            //client.Credentials = new System.Net.NetworkCredential(sender, "");
            //client.Port = 587;
            //client.Host = "smtp.gmail.com";
            //client.Send(email);

        } 

       }
}