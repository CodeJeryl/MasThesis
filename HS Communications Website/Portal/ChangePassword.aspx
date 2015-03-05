<%@ Page Title="" Language="C#" MasterPageFile="~/Portal/PortMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="HS_Communications_Website.Portal.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="container" class="opacity">
            <div class="full-width">
                <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                  Password Successfully Changed.</h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                

           <h2>Change Password</h2>
                    <p>Old password: <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field." ControlToValidate="oldpassTxtbox" ForeColor="Red" ValidationGroup="qw"></asp:RequiredFieldValidator>  <asp:TextBox ID="oldpassTxtbox" runat="server" TextMode="Password"></asp:TextBox> </p> 
                  <p>New password: <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="new1pass" ForeColor="Red" ValidationGroup="qw"></asp:RequiredFieldValidator> <asp:TextBox ID="new1pass" runat="server" TextMode="Password"></asp:TextBox></p>
                  
                <p> Repeat new password: <asp:TextBox ID="new2pass" runat="server" TextMode="Password"></asp:TextBox>  
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="New Password does not match" ControlToCompare="new1pass" ControlToValidate="new2pass" ForeColor="Red" ValidationGroup="qw"></asp:CompareValidator></p>
               
                
                <span style="margin: 80%"> <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="buttonn" OnClick="Button1_Click" ValidationGroup="qw"/></span>
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>

</asp:Content>
