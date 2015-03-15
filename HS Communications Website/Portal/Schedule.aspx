<%@ Page Title="" Language="C#" MasterPageFile="~/Portal/PortMaster.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="HS_Communications_Website.Portal.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container" class="opacity">
            <div class="full-width">
           <h2>Class Schedule: <asp:Label ID="SchedLbl" runat="server" Text="Label"></asp:Label></h2>
                   
 <asp:Image ID="Image1" runat="server" Height="607px" Width="900px" /> <br/>
    <span style="margin-left: 80%">
        <asp:Button ID="Button1" runat="server" Text="Print Schedule" CssClass="buttonn"/></span>
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>

</asp:Content>
