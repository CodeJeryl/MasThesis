<%@ Page Title="" Language="C#" MasterPageFile="~/Portal/PortMaster.Master" AutoEventWireup="true" CodeBehind="GradesViewer.aspx.cs" Inherits="HS_Communications_Website.Portal.GradesViewer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>    Grades Viewer</h2>
                
                

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [Subcode], [Units], [first], [second], [third], [fourth], [d1], [d2], [d3], [d4] FROM [SMTR] WHERE ([Studno] = @Studno)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="0" Name="Studno" SessionField="studno" Type="Int32" />
                            </SelectParameters>
                    </asp:SqlDataSource>
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCreated="ListView1_ItemCreated">
                            
                            <EditItemTemplate>
                                <tr style="background-color: #FFCC66;color: #000080;">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="SubcodeTextBox" runat="server" Text='<%# Bind("Subcode") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UnitsTextBox" runat="server" Text='<%# Bind("Units") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="firstTextBox" runat="server" Text='<%# Bind("first") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="secondTextBox" runat="server" Text='<%# Bind("second") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="thirdTextBox" runat="server" Text='<%# Bind("third") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="fourthTextBox" runat="server" Text='<%# Bind("fourth") %>' />
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
                                        <asp:TextBox ID="SubcodeTextBox" runat="server" Text='<%# Bind("Subcode") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UnitsTextBox" runat="server" Text='<%# Bind("Units") %>' />
                                    </td>
                                    <td >
                                        <asp:TextBox ID="firstTextBox" runat="server" Text='<%# Bind("first") %>' />
                                    </td>
                                    <td >
                                        <asp:TextBox ID="secondTextBox" runat="server" Text='<%# Bind("second") %>' />
                                    </td>
                                    <td >
                                        <asp:TextBox ID="thirdTextBox" runat="server" Text='<%# Bind("third") %>' />
                                    </td>
                                    <td >
                                        <asp:TextBox ID="fourthTextBox" runat="server" Text='<%# Bind("fourth") %>' />
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
                                <tr style="background-color: #FFFBD6;color: #333333;">
                                    <td>
                                        <asp:Label ID="SubcodeLabel" runat="server" Text='<%# Eval("Subcode") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="UnitsLabel" runat="server" Text='<%# Eval("Units") %>' />
                                    </td>
                                    <td >
                                        <asp:Label ID="firstLabel" runat="server" Text='<%# Eval("first") %>'  />
                                    </td>
                                    <td >
                                        <asp:Label ID="secondLabel" runat="server" Text='<%# Eval("second") %>' />
                                    </td>
                                    <td >
                                        <asp:Label ID="thirdLabel" runat="server" Text='<%# Eval("third") %>' />
                                    </td>
                                     <td >
                                        <asp:Label ID="fourthLabel" runat="server" Text='<%# Eval("fourth") %>' />
                                    </td>
                                 <%--   <td>
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
                                    </td>--%>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                    <th runat="server">Subcode</th>
                                                    <th runat="server">Units</th>
                                                    <th runat="server">first</th>
                                                    <th runat="server">second</th>
                                                    <th runat="server">third</th>
                                                    <th runat="server">fourth</th>
                                                  
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
                                        <asp:Label ID="SubcodeLabel" runat="server" Text='<%# Eval("Subcode") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="UnitsLabel" runat="server" Text='<%# Eval("Units") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="firstLabel" runat="server" Text='<%# Eval("first") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="secondLabel" runat="server" Text='<%# Eval("second") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="thirdLabel" runat="server" Text='<%# Eval("third") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="fourthLabel" runat="server" Text='<%# Eval("fourth") %>' />
                                    </td>
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
                    
                 
                


                <div class="clear"></div>
                

            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
