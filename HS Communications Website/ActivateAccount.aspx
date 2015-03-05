<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ActivateAccount.aspx.cs" Inherits="HS_Communications_Website.ActivateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="container" class="opacity">
            <div class="full-width">
                <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                   Student Account and Parent Account is Successfully Activated</h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                

           <h2>Activate Account</h2>
                    <p> Id Number/Username: <asp:TextBox ID="userTxtbox" runat="server"></asp:TextBox></p> <br />
                  <p> Email Address: <asp:TextBox ID="emailTxtbox" runat="server"></asp:TextBox></p>
                  <br/>
                <span style="margin: 80%"> <asp:Button ID="Button1" runat="server" Text="Activate Now" CssClass="buttonn" OnClick="Button1_Click"/></span>
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>

</asp:Content>
