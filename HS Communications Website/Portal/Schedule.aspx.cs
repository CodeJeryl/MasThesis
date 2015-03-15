using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Portal
{
    public partial class Schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    Session["section"] = "GREGOR MENDEL";
           SchedLbl.Text = Session["section"].ToString();

            var constring =
                  System.Configuration.ConfigurationManager.ConnectionStrings["HsDbConnectionString"];
            string conss = constring.ConnectionString;
            SqlConnection con = new SqlConnection(conss);

            SqlCommand command = new SqlCommand("select data from uploadedFiles where section='GREGOR MENDEL'", con);
            //" + Session["section"].ToString() + "
            //for retrieving the image field in SQL SERVER EXPRESS
            //Database you should first bring
            //that image in DataList or DataTable
            //then add the content to the byte[] array.
            //That's ALL!
            SqlDataAdapter dp = new SqlDataAdapter(command);
            DataSet ds = new DataSet("MyImages");


            byte[] MyData = new byte[0];

            dp.Fill(ds, "MyImages");

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {


            DataRow myRow;
            myRow = ds.Tables["MyImages"].Rows[0];
            MyData = (byte[])myRow["data"];

            MemoryStream stream = new MemoryStream(MyData);
            //With the code below, you are in fact converting the byte array of image
            //to the real image.
            // var img = "data:image/png;base64," + Convert.ToBase64String(stream.ToArray(), 0, stream.ToArray().Length);
            Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(stream.ToArray(), 0, stream.ToArray().Length);
            //   pictureBox2.Image = Image.FromStream(stream);
            }
            else
            {
                Image1.ImageUrl = "~/images/notavail.png";
            }
        }
    }
}