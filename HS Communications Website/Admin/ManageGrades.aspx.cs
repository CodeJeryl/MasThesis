using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Admin
{
    public partial class ManageGrades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            try
            {


                var constr =
                    System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection(constr);
                con.Close();
                con.Open();
                if (e.CommandName == "enable")
                {

                    DropDownList drop = (DropDownList)(e.Item.FindControl("DropDownList1"));

                    SqlCommand en = new SqlCommand("update smtr set "+drop.SelectedValue+" = 'true'", con);
                    en.ExecuteNonQuery();

                }
                if(e.CommandName == "disable")
                {

                    DropDownList drop = (DropDownList)(e.Item.FindControl("DropDownList1"));

                    SqlCommand en1 = new SqlCommand("update smtr set " + drop.SelectedValue + " = 'false'", con);
                    en1.ExecuteNonQuery();

                }

                con.Close();
                ListView1.DataBind();

                Panel1.Visible = true;
                Label1.Text = "Visibility of grades is successfully updated!";

            }
            catch (Exception ee)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ee.Message;
            }
        }

        protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            
            try
            {


                if (e.CommandName == "open")
                {
                    Label sectno = (Label)(e.Item.FindControl("SectnoLabel"));
                    Label subcode = (Label)(e.Item.FindControl("SubcodeLabel"));
                    Label teachername = (Label)(e.Item.FindControl("fullnameLbl"));

                    Session["sectno"] = sectno.Text;
                    Session["subcode"] = subcode.Text;
                    Session["teachername"] = teachername.Text;

                    Response.Redirect("AddGrades.aspx");
                  }


            }
            catch (Exception ee)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ee.Message;
            }


        }
    }
}