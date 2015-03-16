using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HS_Communications_Website.Admin
{
    public partial class AddGrades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            secLbl.Text = Session["sectno"].ToString();
            subLbl.Text = Session["subcode"].ToString();
            teachLbl.Text = Session["teachername"].ToString();
        }


        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            originalDataTable = (System.Data.DataTable)ViewState["originalValuesDataTable"];

            foreach (GridViewRow r in GridView1.Rows)
                if (IsRowModified(r)) { GridView1.UpdateRow(r.RowIndex, false); }

            // Rebind the Grid to repopulate the original values table.
            tableCopied = false;
            GridView1.DataBind();
        }

        protected bool IsRowModified(GridViewRow r)
        {
            int currentID;
            string first;
            string second;
            string third;
            string fourth;

            currentID = Convert.ToInt32(GridView1.DataKeys[r.RowIndex].Value);

            first = ((TextBox)r.FindControl("firstTxtbox")).Text;
            second = ((TextBox)r.FindControl("secondTxtbox")).Text;
            third = ((TextBox)r.FindControl("thirdTxtbox")).Text;
            fourth = ((TextBox)r.FindControl("fourthTxtbox")).Text;


            System.Data.DataRow row =
                originalDataTable.Select(String.Format("SMTRID = {0}", currentID))[0];

            if (!first.Equals(row["first"].ToString())) { return true; }
            if (!second.Equals(row["second"].ToString())) { return true; }
            if (!third.Equals(row["third"].ToString())) { return true; }
            if (!fourth.Equals(row["fourth"].ToString())) { return true; }

            return false;
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
    }
}