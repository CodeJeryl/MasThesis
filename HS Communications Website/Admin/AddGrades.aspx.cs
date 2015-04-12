using System;
using System.Collections.Generic;
using System.Data;
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
            if(!IsPostBack)
                subLbl.Text = Session["subcode"].ToString();
                secLbl.Text = Session["sectno"].ToString();
                teachLbl.Text = Session["teachername"].ToString();
          
        }


        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            updatebtn();
            InsertEqui.Visible = true;
            UpdateButton.Visible = false;
        }

        private void updatebtn()
        {
            originalDataTable = (System.Data.DataTable) ViewState["originalValuesDataTable"];

            foreach (GridViewRow r in GridView1.Rows)
                if (IsRowModified(r))
                {
                    GridView1.UpdateRow(r.RowIndex, false);
                }

            // Rebind the Grid to repopulate the original values table.
            tableCopied = false;
            GridView1.DataBind();
        }


        protected bool IsRowModified(GridViewRow r)
        {
            //   90 and above (A), 85-89 (P), 80-84 (AP), 75-79 (D), 74 and below (B)

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
            

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRow dr = ((DataRowView) e.Row.DataItem).Row;
               
                int a;
                bool isNumeric = int.TryParse(dr["first"].ToString(), out a);
                if (isNumeric)
                {
                    if (a >= 90)
                    {
                        ((TextBox)e.Row.FindControl("firstTxtbox")).Text = dr["first"] + "(A)";
                    }
                    else if (a >= 85)
                    {
                        ((TextBox)e.Row.FindControl("firstTxtbox")).Text = dr["first"] + "(P)";
                    }
                    else if (a >= 80)
                    {
                        ((TextBox)e.Row.FindControl("firstTxtbox")).Text = dr["first"] + "(AP)";
                    }
                    else if (a >= 75)
                    {
                        ((TextBox)e.Row.FindControl("firstTxtbox")).Text = dr["first"] + "(D)";
                    }
                    else
                    {
                        ((TextBox)e.Row.FindControl("firstTxtbox")).Text = dr["first"] + "(B)";
                    }
                }

                int b;
                bool isNumeric2 = int.TryParse(dr["second"].ToString(), out b);
                if (isNumeric2)
                {
                    if (b >= 90)
                    {
                        ((TextBox)e.Row.FindControl("secondTxtbox")).Text = dr["second"] + "(A)";
                    }
                    else if (b >= 85)
                    {
                        ((TextBox)e.Row.FindControl("secondTxtbox")).Text = dr["second"] + "(P)";
                    }
                    else if (b >= 80)
                    {
                        ((TextBox)e.Row.FindControl("secondTxtbox")).Text = dr["second"] + "(AP)";
                    }
                    else if (b >= 75)
                    {
                        ((TextBox)e.Row.FindControl("secondTxtbox")).Text = dr["second"] + "(D)";
                    }
                    else
                    {
                        ((TextBox)e.Row.FindControl("secondTxtbox")).Text = dr["second"] + "(B)";
                    }
                }

                int c;
                bool isNumeric3 = int.TryParse(dr["third"].ToString(), out c);
                if (isNumeric3)
                {
                    if (b >= 90)
                    {
                        ((TextBox)e.Row.FindControl("thirdTxtbox")).Text = dr["third"] + "(A)";
                    }
                    else if (b >= 85)
                    {
                        ((TextBox)e.Row.FindControl("thirdTxtbox")).Text = dr["third"] + "(P)";
                    }
                    else if (b >= 80)
                    {
                        ((TextBox)e.Row.FindControl("thirdTxtbox")).Text = dr["third"] + "(AP)";
                    }
                    else if (b >= 75)
                    {
                        ((TextBox)e.Row.FindControl("thirdTxtbox")).Text = dr["third"] + "(D)";
                    }
                    else
                    {
                        ((TextBox)e.Row.FindControl("thirdTxtbox")).Text = dr["third"] + "(B)";
                    }
                }

                int d;
                bool isNumeric4 = int.TryParse(dr["fourth"].ToString(), out d);
                if (isNumeric4)
                {
                    if (b >= 90)
                    {
                        ((TextBox)e.Row.FindControl("fourthTxtbox")).Text = dr["fourth"] + "(A)";
                    }
                    else if (b >= 85)
                    {
                        ((TextBox)e.Row.FindControl("fourthTxtbox")).Text = dr["fourth"] + "(P)";
                    }
                    else if (b >= 80)
                    {
                        ((TextBox)e.Row.FindControl("fourthTxtbox")).Text = dr["fourth"] + "(AP)";
                    }
                    else if (b >= 75)
                    {
                        ((TextBox)e.Row.FindControl("fourthTxtbox")).Text = dr["fourth"] + "(D)";
                    }
                    else
                    {
                        ((TextBox)e.Row.FindControl("fourthTxtbox")).Text = dr["fourth"] + "(B)";
                    }
                }
            }
        }

        protected void InsertEqui_Click(object sender, EventArgs e)
        {
            updatebtn();
            UpdateButton.Visible = true;
            InsertEqui.Visible = false;
        }
    }
}