using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Admin
{
    public partial class AddStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ErrorPanel.Visible = false;
            string ExcelContentType = "application/vnd.ms-excel";
            string Excel2010ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            if (FileUpload1.HasFile)
            {

                if (FileUpload1.PostedFile.ContentType == ExcelContentType || FileUpload1.PostedFile.ContentType == Excel2010ContentType)
                {
                    try
                    {

                        string path = string.Concat(Server.MapPath("~/Admin/AddedStudents/"), FileUpload1.FileName);

                        FileUpload1.SaveAs(path);
                        string excelConnectionString = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 8.0;", path);


                        using (OleDbConnection connection = new OleDbConnection(excelConnectionString))
                        {
                            OleDbCommand command = new OleDbCommand("Select * FROM [Sheet1$]", connection);

                            connection.Open();


                            using (DbDataReader dr = command.ExecuteReader())
                            {
                                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"].ConnectionString;

                                using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connectionString))
                                {
                                    bulkCopy.DestinationTableName = "BLHD";
                                    bulkCopy.WriteToServer(dr);
                                    ErrorPanel.Visible = true;
                                    ErrorLabel.Text = "Students has been added successfully!";
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
            }
        }
    }
}