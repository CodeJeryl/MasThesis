<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="HS_Communications_Website.Admin.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Upload Page</h2>
                  
                  <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                
                <br />
                    <br />
                    <p> Upload Category: <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Memo</asp:ListItem>
                        <asp:ListItem>Schedule</asp:ListItem>
                        </asp:DropDownList></p> <br />
                    <br />
                
                <p>Title: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="e"></asp:RequiredFieldValidator></p>
                 <br />
                    <p> Browse File : <asp:FileUpload ID="FileUpload1" runat="server" /> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1" ValidationGroup="e"></asp:RequiredFieldValidator></p><br />
                
               
                   <p> <asp:Button ID="Button1" runat="server" Text="Upload Now" OnClick="Button1_Click" CssClass="buttonn" ValidationGroup="e" /></p>
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
