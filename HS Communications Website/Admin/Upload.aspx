<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="HS_Communications_Website.Admin.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Upload Page</h2>
                  
                  <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                
                <br />
                    <br />
                    <p> Upload Category: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Memo</asp:ListItem>
                        <asp:ListItem>Class Schedule</asp:ListItem>
                        </asp:DropDownList></p> <br />
                    <br />
                
               <p> <asp:Panel ID="Panel2" runat="server" Visible="False"> Section: <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Sectno" DataValueField="Sectno"></asp:DropDownList> 
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT DISTINCT [Sectno], [GR-YR] AS column1 FROM [Section] ORDER BY [GR-YR]"></asp:SqlDataSource>
               </asp:Panel></p> <br />
                
                <p>Title: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="e"></asp:RequiredFieldValidator></p>
                 <br />
                    <p> Browse File : <asp:FileUpload ID="FileUpload1" runat="server" /> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1" ValidationGroup="e"></asp:RequiredFieldValidator></p><br />
                
               
                   <p> <asp:Button ID="Button1" runat="server" Text="Upload Now" OnClick="Button1_Click" CssClass="buttonn" ValidationGroup="e" /></p>
                
                <br /> <br /> <br/>
                
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
                  <EditItemTemplate>
                        <tr style="background-color: #FFCC66;color: #000080;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="uploadtypeTextBox" runat="server" Text='<%# Bind("uploadtype") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="uploaderTextBox" runat="server" Text='<%# Bind("uploader") %>' />
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
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="uploadtypeTextBox" runat="server" Text='<%# Bind("uploadtype") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="uploaderTextBox" runat="server" Text='<%# Bind("uploader") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #FFFBD6;color: #333333;">
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("id") %>'/>
                               
                            <td>
                                <asp:Label ID="uploadtypeLabel" runat="server" Text='<%# Eval("uploadtype") %>' />
                            </td>
                            <td>
                                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                            </td>
                            <td>
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                            </td>
                            <td>
                                <asp:Label ID="uploaderLabel" runat="server" Text='<%# Eval("uploader") %>' />
                            </td>
                            <td>
                                <asp:Button ID="dowBtn" runat="server" Text="Download" CssClass="buttonn" CommandName="down"  />
                                <asp:Button ID="delBtn" runat="server" Text="Delete" CssClass="buttonn" CommandName="del" OnClientClick="javascript:return confirm('Delete Syllabus?');"/>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                           <th runat="server">Type of File</th>
                                            <th runat="server">Title</th>
                                            <th runat="server">Upload Date</th>
                                            <th runat="server">Uploader</th>
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
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="uploadtypeLabel" runat="server" Text='<%# Eval("uploadtype") %>' />
                            </td>
                            <td>
                                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                            </td>
                            <td>
                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                            </td>
                            <td>
                                <asp:Label ID="uploaderLabel" runat="server" Text='<%# Eval("uploader") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                    </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [id], [uploadtype], [title], [date], [uploader] FROM [uploadedFiles] ORDER BY [date] DESC"></asp:SqlDataSource>

                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
