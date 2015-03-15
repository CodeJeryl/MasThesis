<%@ Page Title="" Language="C#" MasterPageFile="~/Portal/PortMaster.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="HS_Communications_Website.Portal.Message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Message</h2>
                 <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                <br />
                    <p style="font-size: 17px"> From: <asp:Label ID="fromLbl" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Date: <asp:Label ID="dateLbl" runat="server" Text="Label"></asp:Label>
                    </p> <br />
                    <br />
                <h2>Title: <asp:Label ID="titleLbl" runat="server" Text="Label"></asp:Label></h2>
                <br />
                    <br />

                    <p style="background-color: white"> <asp:Label ID="bodyLbl" runat="server" Text="Label" Font-Size="Larger"></asp:Label></p> <br/>
                
                <br/>
                
                <a href="Phomepage.aspx">Go back to Inbox</a>
               
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>


</asp:Content>
