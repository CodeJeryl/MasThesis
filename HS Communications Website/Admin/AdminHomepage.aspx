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
                <br/><br/>    

                

                <h2>Inbox</h2>
                <br/>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [msgId], [studno], [senderName], [subject], [date], [status] FROM [personalMsgTbl] WHERE ([admin] = @admin) ORDER BY [status] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="false" Name="admin" Type="Boolean" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
                    
                    <EditItemTemplate>
                        <tr style="background-color: #FFCC66;color: #000080;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:TextBox ID="senderNameTextBox" runat="server" Text='<%# Bind("senderName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="senderNameTextBox" runat="server" Text='<%# Bind("senderName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #FFFBD6;color: #333333;">
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("msgId") %>'/>
                             <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("studno") %>'/>
                            <td>
                                <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            </td>
                            <td>
                               
                                 <asp:Label ID="senderNameLabel" runat="server" Text='<%# Eval("senderName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                            </td>
                            <td>
                                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Read" CommandName="read" />
                                <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="del" OnClientClick="javascript:return confirm('Delete Message?');"/>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                            <th runat="server">Subject</th>
                                            <th runat="server">Sender</th>
                                            <th runat="server">date</th>
                                            <th runat="server">Status</th>
                                            <th>Controls</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                            <td>
                                <asp:Label ID="senderNameLabel" runat="server" Text='<%# Eval("senderName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            </td>
                            <td>
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                            </td>
                            <td>
                                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                    </asp:ListView>
             
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
