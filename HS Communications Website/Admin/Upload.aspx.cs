using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Admin
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string conString = ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
          
            SqlConnection con = new SqlConnection(conString);

            try
            {
                if (Page.IsValid)
                {
                    Panel1.Visible = false;
                    ErrorPanel.Visible = false;

                    if (FileUpload1.PostedFile.ContentLength > 5100000)
                    {
                        ErrorPanel.Visible = true;
                        ErrorLabel.Text = "File maximum size is 5mb!";
                    }
                    else
                    {

                        string filePath = FileUpload1.PostedFile.FileName;

                        string filename = Path.GetFileName(filePath);
                        string contenttype = String.Empty;
                        string ext = Path.GetExtension(filename);

                        switch (ext)
                        {
                            case ".doc":
                                contenttype = "application/msword";
                                break;
                            case ".docx":
                                contenttype = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
                                break;
                            case ".pdf":
                                contenttype = "application/pdf";
                                break;
                            case ".jpg":
                                contenttype = "image/jpeg";
                                break;
                        }

                        if (contenttype != String.Empty)
                        {
                            Stream fs = FileUpload1.PostedFile.InputStream;
                            BinaryReader br = new BinaryReader(fs);
                            Byte[] bytes = br.ReadBytes((Int32) fs.Length);


                            string strQuery = "insert into uploadedFiles values('" + DropDownList1.Text +"','" + TextBox1.Text +
                                              "',@filename, @datee,@ContentType, @Data,'" + Session["name"] + "','"+DropDownList2.Text+"')";

                            SqlCommand cmd = new SqlCommand(strQuery, con);

                            cmd.Parameters.Add("@datee", SqlDbType.DateTime).Value = DateTime.Now.ToShortDateString();
                            cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = filename;
                            cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
                            cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;

                            con.Close();
                            con.Open();
                            cmd.ExecuteNonQuery();

                            Panel1.Visible = true;
                            Label1.Text = "File Uploaded Successfully!";

                            //     SyllaUploadListview.DataBind();
                                  ListView1.DataBind();
                            //    dataload();
                        }

                        else
                        {
                            ErrorPanel.Visible = true;
                            ErrorLabel.Text = "File format not recognized. Upload Jpg/Jpeg/Pdf/Word Documents only";

                        }


                    }
                }
            }
            catch (Exception ex)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = ex.Message;
            }
        }

        byte[] by;
        string filename;
        string content;
        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);

            try
            {
                HiddenField hid = (HiddenField)(e.Item.FindControl("HiddenField1"));

                if (e.CommandName == "down")
                {
                    con.Close();
                    con.Open();

                    SqlCommand qw = new SqlCommand("select * from uploadedFiles where ID = '" + hid.Value + "'", con);
                    SqlDataReader dd = qw.ExecuteReader();

                    while (dd.Read())
                    {
                        filename = dd.GetString(3);
                        content = dd.GetString(5);
                        by = (Byte[])dd["data"];
                    }

                    con.Close();

                    Response.Buffer = true;

                    Response.Charset = "";

                    Response.Cache.SetCacheability(HttpCacheability.NoCache);

                    Response.ContentType = content;

                    Response.AddHeader("content-disposition", "attachment;filename=" + filename);

                    Response.BinaryWrite(by);

                    Response.Flush();

                    Response.End();
                }

                if (e.CommandName == "del")
                {
                    con.Close();
                    con.Open();

                    SqlCommand qw = new SqlCommand("delete from uploadedFiles where ID = '" + hid.Value + "'", con);
                    qw.ExecuteNonQuery();
                    ErrorPanel.Visible = true;
                    ErrorLabel.Text = "File successfully Deleted!";
                 //   SyllaUploadListview.DataBind();
                    ListView1.DataBind();
                  //  dataload();

                }
            }
            catch (Exception er)
            {
                ErrorPanel.Visible = true;
                ErrorLabel.Text = er.Message;
                //   throw;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "Class Schedule")
            {
                Panel2.Visible = true;
            }
            else
            {
                Panel2.Visible = false;
            }
        }
    }
}