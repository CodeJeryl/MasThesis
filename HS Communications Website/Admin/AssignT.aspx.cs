using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Admin
{
    public partial class AssignT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         //   Panel1.Visible = false;
        }

       private bool tableCopied = false;
        private System.Data.DataTable originalDataTable;

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
                if (!tableCopied)
                {
                    originalDataTable = ((System.Data.DataRowView)e.Row.DataItem).Row.Table.Copy();
                    ViewState["originalValuesDataTable"] = originalDataTable;
                    tableCopied = true;
                }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            originalDataTable = (System.Data.DataTable)ViewState["originalValuesDataTable"];

            foreach (GridViewRow r in GridView1.Rows)
                if (IsRowModified(r)) { GridView1.UpdateRow(r.RowIndex, false); }

            // Rebind the Grid to repopulate the original values table.
            tableCopied = false;
            GridView1.DataBind();
            Panel1.Visible = true;
        }

        protected bool IsRowModified(GridViewRow r)
        {
            int currentID;
            string fcode;
            string subcode;
            string sectno;
            string grade;
            string currentFirstName;

            currentID = Convert.ToInt32(GridView1.DataKeys[r.RowIndex].Value);

            fcode = ((TextBox)r.FindControl("fcodeTxtbox")).Text;
            subcode = ((Label) r.FindControl("SubCodeLbl")).Text;
            sectno = ((Label)r.FindControl("SectnoLbl")).Text;
            grade = ((Label)r.FindControl("Yearlbl")).Text;
         //   currentFirstName = ((TextBox)r.FindControl("FirstNameTextBox")).Text;

            System.Data.DataRow row =
                originalDataTable.Select(String.Format("SID = {0}", currentID))[0];
         //   System.Data.DataRow row = originalDataTable.Select(String.Format("Subcode = {0}", currentID))[0];
           // System.Data.DataRow row = originalDataTable.Select(String.Format("Sectno = {0}", currentID))[0];

            if (!fcode.Equals(row["Fcode"].ToString())) { return true; }
            if (!fcode.Equals(row["Subcode"].ToString())) { return true; }
            if (!fcode.Equals(row["Sectno"].ToString())) { return true; }
            if (!fcode.Equals(row["column1"].ToString())) { return true; }
            if (!fcode.Equals(row["Fcode"].ToString())) { return true; }
        //    if (!currentFirstName.Equals(row["FirstName"].ToString())) { return true; }

            return false;
          
        }
       
    }
}