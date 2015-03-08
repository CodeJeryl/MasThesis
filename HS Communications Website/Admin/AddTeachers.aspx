<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddTeachers.aspx.cs" Inherits="HS_Communications_Website.Admin.AddTeachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
    window.$zopim || (function (d, s) {
        var z = $zopim = function (c) { z._.push(c) }, $ = z.s =
        d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
            z.set.
            _.push(o)
        }; z._ = []; z.set._ = []; $.async = !0; $.setAttribute('charset', 'utf-8');
        $.src = '//v2.zopim.com/?2qcBd7ZzrEoXc34m8qUMZBgGcPYQAkGl'; z.t = +new Date; $.
        type = 'text/javascript'; e.parentNode.insertBefore($, e)
    })(document, 'script');
</script>
<!--End of Zopim Live Chat Script-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div id="container" class="opacity">
 <div class="full-width">
                <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                
     <div class="one-half">
           <h2>Add/Register Faculty</h2>
    <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
           <p>Send to: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
               <asp:ListItem Value="all">ALL</asp:ListItem>
               <asp:ListItem Value="students">STUDENTS</asp:ListItem>
               <asp:ListItem Value="parents">PARENTS</asp:ListItem>
               <asp:ListItem Value="faculty">FACULTY</asp:ListItem>
               </asp:DropDownList> &nbsp;&nbsp;&nbsp; Section: <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sectno" DataValueField="Sectno"></asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT DISTINCT [Sectno] FROM [Section] ORDER BY [Sectno]"></asp:SqlDataSource>
                </p> </ContentTemplate>
     </asp:UpdatePanel>--%>
           <p></p>
                    <p> Employee ID Number: <asp:TextBox ID="empIDtxtbox" runat="server"></asp:TextBox></p> <br />
                  <p>Full Name: <asp:TextBox ID="nameTxtbox" runat="server" ></asp:TextBox></p>
                  <br/>
                <p>Password: <asp:TextBox ID="passwordTxtbox" runat="server" TextMode="Password"></asp:TextBox></p>
                  <br/>
      <p>User Level: <asp:DropDownList ID="DropDownList1" runat="server">
               <asp:ListItem Value="Teacher">Teacher</asp:ListItem>
               <asp:ListItem Value="Principal">Principal</asp:ListItem>
               </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:CheckBox ID="CheckBox1" runat="server" /> Check this if Admin Account
                <span style="margin: 60%">
               <asp:Button ID="Button1" runat="server" Text="Add Faculty" CssClass="buttonn" OnClick="Button1_Click"/>
                </span>
          </div>
     
     <div class="one-half last">
           <h2>Assign Advisers to Section</h2> <br/>
         <p>Section: <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sectno" DataValueField="Sectno"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT DISTINCT [Sectno], [GR-YR] AS column1 FROM [Section] ORDER BY [GR-YR]"></asp:SqlDataSource>
           </p><br/>
         <p>Adviser Name: 
             <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="fullname" DataValueField="fCode">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [fCode], [fullname] FROM [FacTbl] ORDER BY [fullname]"></asp:SqlDataSource>
           </p> <br/>
         <span style="margin: 60%">
               <asp:Button ID="AdviserBtn" runat="server" Text="Assign Adviser" CssClass="buttonn" OnClick="AdviserBtn_Click"/>
                </span>
     </div>
          

                <div class="clear"></div>
            </div>
           </div>

</asp:Content>
