<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SendMessage.aspx.cs" Inherits="HS_Communications_Website.Admin.SendMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
     <div id="container" class="opacity">
 <div class="full-width">
                <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                   Message Successfully Sent!</h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                

           <h2>Send Message</h2>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
           <p>
            Send to: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
               <asp:ListItem Value="all">ALL</asp:ListItem>
               <asp:ListItem Value="students">STUDENTS</asp:ListItem>
               <asp:ListItem Value="parents">PARENTS</asp:ListItem>
               <asp:ListItem Value="faculty">FACULTY</asp:ListItem>
               </asp:DropDownList>  &nbsp;&nbsp;&nbsp;   <asp:CheckBox ID="CheckBox1" runat="server" Text="Send to specific section" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" Visible="False" /> &nbsp;&nbsp;&nbsp; <asp:Label ID="seclbl" runat="server" Text="Section: "></asp:Label> <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sectno" DataValueField="Sectno" Visible="False"></asp:DropDownList> 
              
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT DISTINCT [Sectno] FROM [Section] ORDER BY [Sectno]"></asp:SqlDataSource>
                </p> </ContentTemplate>
     </asp:UpdatePanel>
           <p></p>
                    <p> Title: <asp:TextBox ID="titleTxtbox" runat="server"></asp:TextBox></p> <br />
                  <p> Message: <asp:TextBox ID="messageTxtbox" runat="server" TextMode="MultiLine"></asp:TextBox></p>
                  <br/>
                <span style="margin: 80%"> <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="buttonn" OnClick="Button1_Click"/></span>
                <div class="clear"></div>
            </div>
           </div>
</asp:Content>
