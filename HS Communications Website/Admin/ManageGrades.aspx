<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageGrades.aspx.cs" Inherits="HS_Communications_Website.Admin.ManageGrades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Manage Grades</h2>
                <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                   <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT DISTINCT [d1], [d2], [d3], [d4] FROM [SMTR]"></asp:SqlDataSource>

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
                   
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:TextBox ID="d1TextBox" runat="server" Text='<%# Bind("d1") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="d2TextBox" runat="server" Text='<%# Bind("d2") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="d3TextBox" runat="server" Text='<%# Bind("d3") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="d4TextBox" runat="server" Text='<%# Bind("d4") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
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
                                <asp:TextBox ID="d1TextBox" runat="server" Text='<%# Bind("d1") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="d2TextBox" runat="server" Text='<%# Bind("d2") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="d3TextBox" runat="server" Text='<%# Bind("d3") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="d4TextBox" runat="server" Text='<%# Bind("d4") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="d1Label" runat="server" Text='<%# Eval("d1") %>' />
                            </td>
                            <td>
                                <asp:Label ID="d2Label" runat="server" Text='<%# Eval("d2") %>' />
                            </td>
                            <td>
                                <asp:Label ID="d3Label" runat="server" Text='<%# Eval("d3") %>' />
                            </td>
                            <td>
                                <asp:Label ID="d4Label" runat="server" Text='<%# Eval("d4") %>' />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                     <asp:ListItem Value="d1">First Quarter</asp:ListItem>
                                     <asp:ListItem Value="d2">Second Quarter</asp:ListItem>
                                    <asp:ListItem Value="d3">Third Quarter</asp:ListItem>
                                    <asp:ListItem Value="d4">Fourth Quarter</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="enableBtn" runat="server" Text="Enable"  CssClass="buttonn" CommandName="enable"/>
                                <asp:Button ID="disableBtn" runat="server" Text="Disable" CssClass="buttonn" CommandName="disable"/>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">First Quarter</th>
                                            <th runat="server">Second Quarter</th>
                                            <th runat="server">Third Quarter</th>
                                            <th runat="server">Fourth Quarter</th>
                                            <th>Controls</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="d1Label" runat="server" Text='<%# Eval("d1") %>' />
                            </td>
                            <td>
                                <asp:Label ID="d2Label" runat="server" Text='<%# Eval("d2") %>' />
                            </td>
                            <td>
                                <asp:Label ID="d3Label" runat="server" Text='<%# Eval("d3") %>' />
                            </td>
                            <td>
                                <asp:Label ID="d4Label" runat="server" Text='<%# Eval("d4") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                    </asp:ListView>
                
                
                
                    <h2> List of Subjects </h2>
                    
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [Sectno], [Subcode], [GR-YR] AS column1, [fullname] FROM [subjectsView] ORDER BY [GR-YR]">
                      
                    </asp:SqlDataSource>

                    
                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="ListView2_ItemCommand">
                       
                        <EditItemTemplate>
                            <tr style="background-color: #FFCC66;color: #000080;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:TextBox ID="SectnoTextBox" runat="server" Text='<%# Bind("Sectno") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="SubcodeTextBox" runat="server" Text='<%# Bind("Subcode") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table id="Table1" runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                                    <asp:TextBox ID="SectnoTextBox" runat="server" Text='<%# Bind("Sectno") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="SubcodeTextBox" runat="server" Text='<%# Bind("Subcode") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6;color: #333333;">
                                <td>
                                    <asp:Label ID="SectnoLabel" runat="server" Text='<%# Eval("Sectno") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SubcodeLabel" runat="server" Text='<%# Eval("Subcode") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
                                </td>
                                 <td>
                                    <asp:Label ID="fullnameLbl" runat="server" Text='<%# Eval("fullname") %>' />
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Open" CssClass="buttonn" CommandName="open"/>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table id="Table2" runat="server">
                                <tr id="Tr1" runat="server">
                                    <td id="Td1" runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="Tr2" runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                <th id="Th1" runat="server">Section</th>
                                                <th id="Th2" runat="server">Sub Code</th>
                                                <th id="Th3" runat="server">Year</th>
                                                <th id="Th5" runat="server">Name of Teacher</th>
                                                <th id="Th4" runat="server">Control</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr id="Tr3" runat="server">
                                    <td id="Td2" runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                <td>
                                    <asp:Label ID="SectnoLabel" runat="server" Text='<%# Eval("Sectno") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="SubcodeLabel" runat="server" Text='<%# Eval("Subcode") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
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
