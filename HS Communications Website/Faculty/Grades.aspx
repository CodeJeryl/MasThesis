<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacuMaster.Master" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="HS_Communications_Website.Faculty.Grades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Grades</h2>
                
                 <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                  Grades Successfully updated.</h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [Sectno], [Subcode], [GR-YR] AS column1 FROM [subjectsView] WHERE ([fCode] = @fCode) ORDER BY [GR-YR]">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="fCode" SessionField="fcode" Type="Int32" />
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
                                    <asp:Button ID="Button1" runat="server" Text="Open" CssClass="buttonn" CommandName="open"/>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                <th runat="server">Section</th>
                                                <th runat="server">Sub Code</th>
                                                <th runat="server">Year</th>
                                                <th runat="server">Control</th>
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
