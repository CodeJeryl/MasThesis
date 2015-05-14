<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHomepage.aspx.cs" Inherits="HS_Communications_Website.Admin.AdminHomepage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Dashboard</h2>
                
                  
          <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                  </h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
        
                
                <div class="one-half">
           <h1 style="color: black"> Town Feeder</h1>
                <asp:Chart ID="Chart1" runat="server">
                    <Series>
                        <asp:Series Name="Series1" ChartArea="ChartArea1"  ChartType="Bar" ></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="Town"></AxisX>
                            <AxisY Title="Number"></AxisY>
                        </asp:ChartArea>
                    </ChartAreas>
                 
                </asp:Chart>
                </div>
                

                      <div class="one-half last">
                            <h1 style="color: black"> School Feeder</h1>
                <asp:Chart ID="Chart2" runat="server">
                    <Series>
                        <asp:Series Name="Series1" ChartArea="ChartArea1"  ChartType="Bar" ></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX Title="School"></AxisX>
                            <AxisY Title="Number"></AxisY>
                        </asp:ChartArea>
                    </ChartAreas>
                 
                </asp:Chart>
                          

                      </div>
                
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
