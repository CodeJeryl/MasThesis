<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageAccnt.aspx.cs" Inherits="HS_Communications_Website.Admin.ManageAccnt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Enable and Disable Accounts</h2>
                
                  <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                
                <br />
                    <br />

                <div class="one-third">
                    <p> Faculty Name: <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="fullname" DataValueField="fCode"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [fullname], [fCode] FROM [FacTbl] ORDER BY [fullname]"></asp:SqlDataSource>
                    </p>
                    </div> 
                <div class="one-third">
                <p>Toggle Account :
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="False">Enabled</asp:ListItem>
                        <asp:ListItem Value="True">Disabled</asp:ListItem>
                    </asp:DropDownList></p>
                <br/><br/>
                <span style="margin-left: 80%">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="buttonn" OnClick="Button1_Click"/></span>
           </div>
                


                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
