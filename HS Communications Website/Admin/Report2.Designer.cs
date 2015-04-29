namespace HS_Communications_Website.Admin
{
    partial class Report2
    {
        #region Component Designer generated code
        /// <summary>
        /// Required method for telerik Reporting designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            Telerik.Reporting.Group group1 = new Telerik.Reporting.Group();
            Telerik.Reporting.ReportParameter reportParameter1 = new Telerik.Reporting.ReportParameter();
            Telerik.Reporting.Drawing.StyleRule styleRule1 = new Telerik.Reporting.Drawing.StyleRule();
            Telerik.Reporting.Drawing.StyleRule styleRule2 = new Telerik.Reporting.Drawing.StyleRule();
            Telerik.Reporting.Drawing.StyleRule styleRule3 = new Telerik.Reporting.Drawing.StyleRule();
            Telerik.Reporting.Drawing.StyleRule styleRule4 = new Telerik.Reporting.Drawing.StyleRule();
            this.sqlDataSource1 = new Telerik.Reporting.SqlDataSource();
            this.labelsGroupHeaderSection = new Telerik.Reporting.GroupHeaderSection();
            this.labelsGroupFooterSection = new Telerik.Reporting.GroupFooterSection();
            this.lNameCaptionTextBox = new Telerik.Reporting.TextBox();
            this.fNameCaptionTextBox = new Telerik.Reporting.TextBox();
            this.pageFooter = new Telerik.Reporting.PageFooterSection();
            this.currentTimeTextBox = new Telerik.Reporting.TextBox();
            this.pageInfoTextBox = new Telerik.Reporting.TextBox();
            this.reportHeader = new Telerik.Reporting.ReportHeaderSection();
            this.sectionDataTextBox = new Telerik.Reporting.TextBox();
            this.sYDataTextBox = new Telerik.Reporting.TextBox();
            this.gR_YRDataTextBox = new Telerik.Reporting.TextBox();
            this.reportFooter = new Telerik.Reporting.ReportFooterSection();
            this.detail = new Telerik.Reporting.DetailSection();
            this.lNameDataTextBox = new Telerik.Reporting.TextBox();
            this.fNameDataTextBox = new Telerik.Reporting.TextBox();
            this.textBox5 = new Telerik.Reporting.TextBox();
            this.textBox4 = new Telerik.Reporting.TextBox();
            this.textBox3 = new Telerik.Reporting.TextBox();
            this.textBox2 = new Telerik.Reporting.TextBox();
            this.textBox1 = new Telerik.Reporting.TextBox();
            this.textBox6 = new Telerik.Reporting.TextBox();
            this.textBox7 = new Telerik.Reporting.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // sqlDataSource1
            // 
            this.sqlDataSource1.ConnectionString = "HsDbConnectionString";
            this.sqlDataSource1.Name = "sqlDataSource1";
            this.sqlDataSource1.SelectCommand = "SELECT        LName, FName, Section, GR_YR, SY\r\nFROM            BLHD\r\nORDER BY LN" +
    "ame";
            // 
            // labelsGroupHeaderSection
            // 
            this.labelsGroupHeaderSection.Height = Telerik.Reporting.Drawing.Unit.Cm(1.1058331727981567D);
            this.labelsGroupHeaderSection.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.lNameCaptionTextBox,
            this.fNameCaptionTextBox});
            this.labelsGroupHeaderSection.Name = "labelsGroupHeaderSection";
            this.labelsGroupHeaderSection.PrintOnEveryPage = true;
            // 
            // labelsGroupFooterSection
            // 
            this.labelsGroupFooterSection.Height = Telerik.Reporting.Drawing.Unit.Cm(0.71437495946884155D);
            this.labelsGroupFooterSection.Name = "labelsGroupFooterSection";
            this.labelsGroupFooterSection.Style.Visible = false;
            // 
            // lNameCaptionTextBox
            // 
            this.lNameCaptionTextBox.CanGrow = true;
            this.lNameCaptionTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D), Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D));
            this.lNameCaptionTextBox.Name = "lNameCaptionTextBox";
            this.lNameCaptionTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(7.8277082443237305D), Telerik.Reporting.Drawing.Unit.Cm(0.99999988079071045D));
            this.lNameCaptionTextBox.Style.Font.Name = "Arial Black";
            this.lNameCaptionTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Center;
            this.lNameCaptionTextBox.StyleName = "Caption";
            this.lNameCaptionTextBox.Value = "Last Name";
            // 
            // fNameCaptionTextBox
            // 
            this.fNameCaptionTextBox.CanGrow = true;
            this.fNameCaptionTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(7.9335417747497559D), Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D));
            this.fNameCaptionTextBox.Name = "fNameCaptionTextBox";
            this.fNameCaptionTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(7.8277082443237305D), Telerik.Reporting.Drawing.Unit.Cm(0.99999988079071045D));
            this.fNameCaptionTextBox.Style.Font.Name = "Arial Black";
            this.fNameCaptionTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Center;
            this.fNameCaptionTextBox.StyleName = "Caption";
            this.fNameCaptionTextBox.Value = "First Name";
            // 
            // pageFooter
            // 
            this.pageFooter.Height = Telerik.Reporting.Drawing.Unit.Cm(1.1058331727981567D);
            this.pageFooter.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.currentTimeTextBox,
            this.pageInfoTextBox});
            this.pageFooter.Name = "pageFooter";
            // 
            // currentTimeTextBox
            // 
            this.currentTimeTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D), Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D));
            this.currentTimeTextBox.Name = "currentTimeTextBox";
            this.currentTimeTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(7.8277082443237305D), Telerik.Reporting.Drawing.Unit.Cm(0.99999988079071045D));
            this.currentTimeTextBox.StyleName = "PageInfo";
            this.currentTimeTextBox.Value = "=NOW()";
            // 
            // pageInfoTextBox
            // 
            this.pageInfoTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(7.9335417747497559D), Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D));
            this.pageInfoTextBox.Name = "pageInfoTextBox";
            this.pageInfoTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(7.8277082443237305D), Telerik.Reporting.Drawing.Unit.Cm(0.99999988079071045D));
            this.pageInfoTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Right;
            this.pageInfoTextBox.StyleName = "PageInfo";
            this.pageInfoTextBox.Value = "=PageNumber";
            // 
            // reportHeader
            // 
            this.reportHeader.Height = Telerik.Reporting.Drawing.Unit.Cm(4.5D);
            this.reportHeader.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.sectionDataTextBox,
            this.sYDataTextBox,
            this.gR_YRDataTextBox,
            this.textBox5,
            this.textBox4,
            this.textBox3,
            this.textBox2,
            this.textBox1,
            this.textBox6,
            this.textBox7});
            this.reportHeader.Name = "reportHeader";
            // 
            // sectionDataTextBox
            // 
            this.sectionDataTextBox.CanGrow = true;
            this.sectionDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(6.5000004768371582D), Telerik.Reporting.Drawing.Unit.Cm(3.3562510013580322D));
            this.sectionDataTextBox.Name = "sectionDataTextBox";
            this.sectionDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(4.5000004768371582D), Telerik.Reporting.Drawing.Unit.Cm(0.59970015287399292D));
            this.sectionDataTextBox.Style.Font.Name = "Verdana";
            this.sectionDataTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Left;
            this.sectionDataTextBox.StyleName = "Data";
            this.sectionDataTextBox.Value = "=Fields.Section";
            // 
            // sYDataTextBox
            // 
            this.sYDataTextBox.CanGrow = true;
            this.sYDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(6.5999999046325684D), Telerik.Reporting.Drawing.Unit.Cm(3.8000001907348633D));
            this.sYDataTextBox.Name = "sYDataTextBox";
            this.sYDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(2.5739583969116211D), Telerik.Reporting.Drawing.Unit.Cm(0.62207520008087158D));
            this.sYDataTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Center;
            this.sYDataTextBox.StyleName = "Data";
            this.sYDataTextBox.Value = "=Fields.SY";
            // 
            // gR_YRDataTextBox
            // 
            this.gR_YRDataTextBox.CanGrow = true;
            this.gR_YRDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(5.8000001907348633D), Telerik.Reporting.Drawing.Unit.Cm(3.3781254291534424D));
            this.gR_YRDataTextBox.Name = "gR_YRDataTextBox";
            this.gR_YRDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(0.69979941844940186D), Telerik.Reporting.Drawing.Unit.Cm(0.577825665473938D));
            this.gR_YRDataTextBox.StyleName = "Data";
            this.gR_YRDataTextBox.Value = "=Fields.GR_YR";
            // 
            // reportFooter
            // 
            this.reportFooter.Height = Telerik.Reporting.Drawing.Unit.Cm(0.71437495946884155D);
            this.reportFooter.Name = "reportFooter";
            // 
            // detail
            // 
            this.detail.Height = Telerik.Reporting.Drawing.Unit.Cm(1.1058331727981567D);
            this.detail.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.lNameDataTextBox,
            this.fNameDataTextBox});
            this.detail.Name = "detail";
            // 
            // lNameDataTextBox
            // 
            this.lNameDataTextBox.CanGrow = true;
            this.lNameDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D), Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D));
            this.lNameDataTextBox.Name = "lNameDataTextBox";
            this.lNameDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(7.8277082443237305D), Telerik.Reporting.Drawing.Unit.Cm(0.99999988079071045D));
            this.lNameDataTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Center;
            this.lNameDataTextBox.StyleName = "Data";
            this.lNameDataTextBox.Value = "=Fields.LName";
            // 
            // fNameDataTextBox
            // 
            this.fNameDataTextBox.CanGrow = true;
            this.fNameDataTextBox.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(7.9335417747497559D), Telerik.Reporting.Drawing.Unit.Cm(0.052916664630174637D));
            this.fNameDataTextBox.Name = "fNameDataTextBox";
            this.fNameDataTextBox.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(7.8277082443237305D), Telerik.Reporting.Drawing.Unit.Cm(0.99999988079071045D));
            this.fNameDataTextBox.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Center;
            this.fNameDataTextBox.StyleName = "Data";
            this.fNameDataTextBox.Value = "=Fields.FName";
            // 
            // textBox5
            // 
            this.textBox5.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(6.4000000953674316D), Telerik.Reporting.Drawing.Unit.Cm(2.7782249450683594D));
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(3.1999988555908203D), Telerik.Reporting.Drawing.Unit.Cm(0.59970033168792725D));
            this.textBox5.Style.Font.Name = "Arial Black";
            this.textBox5.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(12D);
            this.textBox5.Value = "CLASS LIST";
            // 
            // textBox4
            // 
            this.textBox4.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(4.2054166793823242D), Telerik.Reporting.Drawing.Unit.Cm(1.0848915576934815D));
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(8.2999992370605469D), Telerik.Reporting.Drawing.Unit.Cm(0.59970033168792725D));
            this.textBox4.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(12D);
            this.textBox4.Value = "Dominican Avenue Abucay, Bataan 2114";
            // 
            // textBox3
            // 
            this.textBox3.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(4.9000000953674316D), Telerik.Reporting.Drawing.Unit.Cm(1.6000000238418579D));
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(6.4999995231628418D), Telerik.Reporting.Drawing.Unit.Cm(0.59970033168792725D));
            this.textBox3.Style.Font.Name = "Arial Black";
            this.textBox3.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(11D);
            this.textBox3.Value = "HIGH SCHOOL DEPARTMENT";
            // 
            // textBox2
            // 
            this.textBox2.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(5.1050000190734863D), Telerik.Reporting.Drawing.Unit.Cm(1.9844748973846436D));
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(5.8999996185302734D), Telerik.Reporting.Drawing.Unit.Cm(0.59970033168792725D));
            this.textBox2.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(12D);
            this.textBox2.Value = "Science-Oriented Curriculum";
            // 
            // textBox1
            // 
            this.textBox1.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(3.2000000476837158D), Telerik.Reporting.Drawing.Unit.Cm(9.9921220680698752E-05D));
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(9.5D), Telerik.Reporting.Drawing.Unit.Cm(0.99999988079071045D));
            this.textBox1.Style.Font.Name = "Old English Text MT";
            this.textBox1.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(20D);
            this.textBox1.Value = "Colegio de San Juan de Letran";
            // 
            // textBox6
            // 
            this.textBox6.CanGrow = true;
            this.textBox6.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(6D), Telerik.Reporting.Drawing.Unit.Cm(3.8000001907348633D));
            this.textBox6.Name = "textBox6";
            this.textBox6.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(0.80000019073486328D), Telerik.Reporting.Drawing.Unit.Cm(0.62207520008087158D));
            this.textBox6.Style.TextAlign = Telerik.Reporting.Drawing.HorizontalAlign.Center;
            this.textBox6.StyleName = "Data";
            this.textBox6.Value = "SY:";
            // 
            // textBox7
            // 
            this.textBox7.CanGrow = true;
            this.textBox7.Location = new Telerik.Reporting.Drawing.PointU(Telerik.Reporting.Drawing.Unit.Cm(6.2999997138977051D), Telerik.Reporting.Drawing.Unit.Cm(3.3562510013580322D));
            this.textBox7.Name = "textBox7";
            this.textBox7.Size = new Telerik.Reporting.Drawing.SizeU(Telerik.Reporting.Drawing.Unit.Cm(0.40000021457672119D), Telerik.Reporting.Drawing.Unit.Cm(0.577825665473938D));
            this.textBox7.Style.Font.Bold = true;
            this.textBox7.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(12D);
            this.textBox7.StyleName = "Data";
            this.textBox7.Value = "-";
            // 
            // Report2
            // 
            this.DataSource = this.sqlDataSource1;
            this.Filters.Add(new Telerik.Reporting.Filter("=Fields.Section.ToUpper()", Telerik.Reporting.FilterOperator.Like, "=\'%\'+Parameters.section.Value.ToUpper()+\'%\'"));
            group1.GroupFooter = this.labelsGroupFooterSection;
            group1.GroupHeader = this.labelsGroupHeaderSection;
            group1.Name = "labelsGroup";
            this.Groups.AddRange(new Telerik.Reporting.Group[] {
            group1});
            this.Items.AddRange(new Telerik.Reporting.ReportItemBase[] {
            this.labelsGroupHeaderSection,
            this.labelsGroupFooterSection,
            this.pageFooter,
            this.reportHeader,
            this.reportFooter,
            this.detail});
            this.Name = "Report2";
            this.PageSettings.Margins = new Telerik.Reporting.Drawing.MarginsU(Telerik.Reporting.Drawing.Unit.Mm(25.399999618530273D), Telerik.Reporting.Drawing.Unit.Mm(25.399999618530273D), Telerik.Reporting.Drawing.Unit.Mm(25.399999618530273D), Telerik.Reporting.Drawing.Unit.Mm(25.399999618530273D));
            this.PageSettings.PaperKind = System.Drawing.Printing.PaperKind.A4;
            reportParameter1.Name = "section";
            reportParameter1.Visible = true;
            this.ReportParameters.Add(reportParameter1);
            this.Style.BackgroundColor = System.Drawing.Color.White;
            styleRule1.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("Title")});
            styleRule1.Style.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(241)))), ((int)(((byte)(238)))), ((int)(((byte)(232)))));
            styleRule1.Style.Color = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            styleRule1.Style.Font.Name = "Verdana";
            styleRule1.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(18D);
            styleRule2.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("Caption")});
            styleRule2.Style.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            styleRule2.Style.Color = System.Drawing.Color.FromArgb(((int)(((byte)(227)))), ((int)(((byte)(222)))), ((int)(((byte)(209)))));
            styleRule2.Style.Font.Name = "Verdana";
            styleRule2.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(10D);
            styleRule2.Style.VerticalAlign = Telerik.Reporting.Drawing.VerticalAlign.Middle;
            styleRule3.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("Data")});
            styleRule3.Style.Font.Name = "Verdana";
            styleRule3.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(9D);
            styleRule3.Style.VerticalAlign = Telerik.Reporting.Drawing.VerticalAlign.Middle;
            styleRule4.Selectors.AddRange(new Telerik.Reporting.Drawing.ISelector[] {
            new Telerik.Reporting.Drawing.StyleSelector("PageInfo")});
            styleRule4.Style.Color = System.Drawing.Color.FromArgb(((int)(((byte)(160)))), ((int)(((byte)(160)))), ((int)(((byte)(160)))));
            styleRule4.Style.Font.Name = "Verdana";
            styleRule4.Style.Font.Size = Telerik.Reporting.Drawing.Unit.Point(8D);
            styleRule4.Style.VerticalAlign = Telerik.Reporting.Drawing.VerticalAlign.Middle;
            this.StyleSheet.AddRange(new Telerik.Reporting.Drawing.StyleRule[] {
            styleRule1,
            styleRule2,
            styleRule3,
            styleRule4});
            this.Width = Telerik.Reporting.Drawing.Unit.Cm(15.814167022705078D);
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
        #endregion

        private Telerik.Reporting.SqlDataSource sqlDataSource1;
        private Telerik.Reporting.GroupHeaderSection labelsGroupHeaderSection;
        private Telerik.Reporting.TextBox lNameCaptionTextBox;
        private Telerik.Reporting.TextBox fNameCaptionTextBox;
        private Telerik.Reporting.GroupFooterSection labelsGroupFooterSection;
        private Telerik.Reporting.PageFooterSection pageFooter;
        private Telerik.Reporting.TextBox currentTimeTextBox;
        private Telerik.Reporting.TextBox pageInfoTextBox;
        private Telerik.Reporting.ReportHeaderSection reportHeader;
        private Telerik.Reporting.TextBox sectionDataTextBox;
        private Telerik.Reporting.TextBox sYDataTextBox;
        private Telerik.Reporting.TextBox gR_YRDataTextBox;
        private Telerik.Reporting.ReportFooterSection reportFooter;
        private Telerik.Reporting.DetailSection detail;
        private Telerik.Reporting.TextBox lNameDataTextBox;
        private Telerik.Reporting.TextBox fNameDataTextBox;
        private Telerik.Reporting.TextBox textBox5;
        private Telerik.Reporting.TextBox textBox4;
        private Telerik.Reporting.TextBox textBox3;
        private Telerik.Reporting.TextBox textBox2;
        private Telerik.Reporting.TextBox textBox1;
        private Telerik.Reporting.TextBox textBox6;
        private Telerik.Reporting.TextBox textBox7;

    }
}