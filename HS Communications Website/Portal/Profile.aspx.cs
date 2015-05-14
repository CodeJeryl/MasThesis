using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Portal
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            loadDb();
        }

        private void loadDb()
        {
            try
            {
                var constring =
                    System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
                string conss = constring.ConnectionString;

                SqlConnection con = new SqlConnection(conss);
                SqlConnection con1 = new SqlConnection(conss);
                con.Close();
                con.Open();
                SqlCommand check = new SqlCommand("Select * from students where studentno = '" + Session["studno"] + "'", con);
                SqlDataReader er = check.ExecuteReader();

                if (er.Read())
                {
                    lastnameTxtbox.Text = er.GetString(6);
                    firstnameTxtbox.Text = er.GetString(4);
                    midnametxtbox.Text = er.GetString(5);
                    // addressTxtbox.Text = er.GetString(9);
                    if (!er.IsDBNull(14)) lastattendTxtbox.Text = er.GetString(14);
                    if (!er.IsDBNull(15)) schoolAddTxtbox.Text = er.GetString(15);
                    if (!er.IsDBNull(16)) dob.Text = er.GetString(16);
                    if (!er.IsDBNull(17)) placeBtxtbox.Text = er.GetString(17);
                    if (!er.IsDBNull(18)) mobileTxtbox.Text = er.GetString(18);

                    if (!er.IsDBNull(19)) houseAddTxtbox.Text = er.GetString(19);
                    if (!er.IsDBNull(20)) brgyAddTxtbox.Text = er.GetString(20);
                    if (!er.IsDBNull(21)) townAddTxtbox.Text = er.GetString(21);
                    if (!er.IsDBNull(22)) provinceAddTxtbox.Text = er.GetString(22);


                    if (!er.IsDBNull(10)) RadioButtonList1.Text = er.GetString(10);
                    if (!er.IsDBNull(12)) emailAddTxtbox.Text = er.GetString(12);

                    if (Session["parent"] == "true")
                    {
                        parentsPanel.Enabled = true;
                        parentBtn.Visible = true;
                        studentBtn.Visible = false;
                        studPanel.Enabled = false;
                    }
                    else
                    {
                        parentsPanel.Enabled = false;
                        studentBtn.Visible = true;
                        studPanel.Enabled = true;
                    }

                    con1.Close();
                    con1.Open();

                    SqlCommand parentD = new SqlCommand("Select * from pDetailsTbl where studno = '" + Session["studno"] + "'",
                                                        con1);
                    SqlDataReader par = parentD.ExecuteReader();

                    if (par.Read())
                    {
                        if (!par.IsDBNull(1)) MnameTxtbox.Text = par.GetString(1);

                        if (!par.IsDBNull(2)) MtelNoTxtbox.Text = par.GetString(2);

                        if (!par.IsDBNull(3)) MMobileTxtbox.Text = par.GetString(3);

                        if (!par.IsDBNull(4)) MoccuTxtbox.Text = par.GetString(4);

                        if (!par.IsDBNull(5)) MaddressTxtbox.Text = par.GetString(5);

                        if (!par.IsDBNull(6)) FnameTxtbox.Text = par.GetString(6);

                        if (!par.IsDBNull(7)) FtelTxtbox.Text = par.GetString(7);

                        if (!par.IsDBNull(8)) FmobTxtbox.Text = par.GetString(8);

                        if (!par.IsDBNull(9)) FoccuTxtbox.Text = par.GetString(9);

                        if (!par.IsDBNull(10)) FaddressTxtbox.Text = par.GetString(10);
                        
                        if (!par.IsDBNull(11)) GnameTxtbox.Text = par.GetString(11);

                        if (!par.IsDBNull(12)) GtelnoTxtbox.Text = par.GetString(12);

                        if (!par.IsDBNull(13)) GmobileTxtbox.Text = par.GetString(13);

                        if (!par.IsDBNull(14)) GoccuTxtbox.Text = par.GetString(14);

                        if (!par.IsDBNull(15)) GaddressTxtbox.Text = par.GetString(15);
                    }
                }
            }
            catch (Exception ex)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ex.Message;
            }
        }


        protected void parentBtn_Click(object sender, EventArgs e)
        {
            try
            {
                //wala pa ung address na editable by parents
           var constring =
              System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conss = constring.ConnectionString;

            SqlConnection conP = new SqlConnection(conss);

            conP.Close();
            conP.Open();

            SqlCommand upd = new SqlCommand("update pDetailsTbl set mname = '"+MnameTxtbox.Text+"',mtel = '"+MtelNoTxtbox.Text+"',mmobile='"+MMobileTxtbox.Text+"', moccu = '"+MoccuTxtbox.Text+"', mAddress = '"+MaddressTxtbox.Text+"', fname = '"+FnameTxtbox.Text+"', ftel = '"+FtelTxtbox.Text+"', fmobile = '"+FmobTxtbox.Text+"', foccu = '"+FoccuTxtbox.Text+"', faddress = '"+FaddressTxtbox.Text+"'," +
                                            "gName = '"+GnameTxtbox.Text+"', gTel = '"+GtelnoTxtbox.Text+"', gmobile = '"+GmobileTxtbox.Text+"', goccu = '"+GoccuTxtbox.Text+"', gaddress = '"+GaddressTxtbox.Text+"' where studno = '" + Session["studno"].ToString() + "'", conP);
            upd.ExecuteNonQuery();
            conP.Close();


         conP.Open();

            SqlCommand upd2 = new SqlCommand("update Students set houseAdd = '" + houseAddTxtbox.Text + "',brgyAdd = '" + brgyAddTxtbox.Text + "',townAdd = '" + townAddTxtbox.Text + "', provAdd = '" + provinceAddTxtbox.Text + "'" +
                                             ",dob = '" + dob.Text + "', pob = '" + placeBtxtbox.Text + "', gender = '" + RadioButtonList1.SelectedValue + "' where studentno = '" + Session["studno"].ToString() + "'", conP);
            upd2.ExecuteNonQuery();
            conP.Close();

                Panel1.Visible = true;
                
            }
            catch (Exception ex)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ex.Message;
            }
        }

        protected void studentBtn_Click(object sender, EventArgs e)
        {
            try
            {
             var constring =
                   System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
                string conss = constring.ConnectionString;

                SqlConnection conS = new SqlConnection(conss);

                conS.Close();
                conS.Open();

                SqlCommand upd1 = new SqlCommand("update Students set mobile = '" + mobileTxtbox.Text + "',email = '" + emailAddTxtbox.Text + "'" +
                                                 ",houseAdd = '"+houseAddTxtbox.Text+"',brgyAdd = '"+brgyAddTxtbox.Text+"',townAdd = '"+townAddTxtbox.Text+"', provAdd = '"+provinceAddTxtbox.Text+"'" +
                                                 ",dob = '"+dob.Text+"', pob = '"+placeBtxtbox.Text+"', gender = '"+RadioButtonList1.SelectedValue+"' where studentno = '" + Session["studno"].ToString() + "'", conS);
                upd1.ExecuteNonQuery();
                conS.Close();

                Panel1.Visible = true;

            }
            catch (Exception ex)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ex.Message;
            }
        }
    }
}