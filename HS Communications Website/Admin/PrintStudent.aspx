<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PrintStudent.aspx.cs" Inherits="HS_Communications_Website.Admin.PrintStudent" %>

<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=7.0.13.220, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Student Generator</h2>
                
                <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="991px" ShowDocumentMapButton="False" ShowHistoryButtons="False" ShowNavigationGroup="False" ShowPrintPreviewButton="False" ShowRefreshButton="False" Width="887px"></telerik:ReportViewer>
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
