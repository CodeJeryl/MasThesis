<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AssignT.aspx.cs" Inherits="HS_Communications_Website.Admin.AssignT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Assign Subject Teachers</h2>
                 </div>
            <!-- End Full Width -->
          <div class="one-fourth">
              <asp:ListView ID="ListView1" runat="server" DataKeyNames="fCode" DataSourceID="SqlDataSource1">
                  <AlternatingItemTemplate>
                      <tr style="background-color:#FFF8DC;">
                          <td>
                              <asp:Label ID="fCodeLabel" runat="server" Text='<%# Eval("fCode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="fullnameLabel" runat="server" Text='<%# Eval("fullname") %>' />
                          </td>
                      </tr>
                  </AlternatingItemTemplate>
                  <EditItemTemplate>
                      <tr style="background-color:#008A8C;color: #FFFFFF;">
                          <td>
                              <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                          </td>
                          <td>
                              <asp:Label ID="fCodeLabel1" runat="server" Text='<%# Eval("fCode") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="fullnameTextBox" runat="server" Text='<%# Bind("fullname") %>' />
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
                              <asp:TextBox ID="fullnameTextBox" runat="server" Text='<%# Bind("fullname") %>' />
                          </td>
                      </tr>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <tr style="background-color:#DCDCDC;color: #000000;">
                          <td>
                              <asp:Label ID="fCodeLabel" runat="server" Text='<%# Eval("fCode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="fullnameLabel" runat="server" Text='<%# Eval("fullname") %>' />
                          </td>
                      </tr>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <table runat="server">
                          <tr runat="server">
                              <td runat="server">
                                  <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                      <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                          <th runat="server">fCode</th>
                                          <th runat="server">fullname</th>
                                      </tr>
                                      <tr id="itemPlaceholder" runat="server">
                                      </tr>
                                  </table>
                              </td>
                          </tr>
                          <tr runat="server">
                              <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                          </tr>
                      </table>
                  </LayoutTemplate>
                  <SelectedItemTemplate>
                      <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                          <td>
                              <asp:Label ID="fCodeLabel" runat="server" Text='<%# Eval("fCode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="fullnameLabel" runat="server" Text='<%# Eval("fullname") %>' />
                          </td>
                      </tr>
                  </SelectedItemTemplate>
              </asp:ListView>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [fCode], [fullname] FROM [FacTbl] ORDER BY [fCode]"></asp:SqlDataSource>
          </div>
          
          <div class="three-fourth last">
              
              <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                 Assigning Faculty Successful!</h2></asp:Panel>

              <asp:Button ID="UpdateButton" runat="server" Text="Update Table" CssClass="buttonn" OnClick="UpdateButton_Click" />

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource2" OnRowDataBound="GridView1_RowDataBound">
                  <Columns>
                      <asp:TemplateField HeaderText="Subcode" SortExpression="Subcode">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Subcode") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="SubCodelbl" runat="server" Text='<%# Bind("Subcode") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Sectno" SortExpression="Sectno">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Sectno") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="SectnoLbl" runat="server" Text='<%# Bind("Sectno") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Year Level" SortExpression="column1">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("column1") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Label ID="Yearlbl" runat="server" Text='<%# Bind("column1") %>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Fcode" SortExpression="Fcode">
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Fcode") %>'></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:TextBox ID="fcodeTxtbox" runat="server" MaxLength="5" Text='<%# Bind("Fcode") %>'></asp:TextBox>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:BoundField DataField="SID" HeaderText="SID" SortExpression="SID" ReadOnly="True" />
                  </Columns>
              </asp:GridView>
              

         
              <%--<asp:ListView ID="ListView2" runat="server" DataKeyNames="SID" DataSourceID="SqlDataSource2">
                  <AlternatingItemTemplate>
                      <tr style="background-color:#FFF8DC;">
                          <td>
                              <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                          </td>
                          <td>
                              <asp:Label ID="SubcodeLabel" runat="server" Text='<%# Eval("Subcode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="SectnoLabel" runat="server" Text='<%# Eval("Sectno") %>' />
                          </td>
                          <td>
                              <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
                          </td>
                          <td>
                              <asp:Label ID="FcodeLabel" runat="server" Text='<%# Eval("Fcode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="SIDLabel" runat="server" Text='<%# Eval("SID") %>' />
                          </td>
                      </tr>
                  </AlternatingItemTemplate>
                  <EditItemTemplate>
                      <tr style="background-color:#008A8C;color: #FFFFFF;">
                          <td>
                              <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                          </td>
                          <td>
                              <asp:TextBox ID="SubcodeTextBox" runat="server" Text='<%# Bind("Subcode") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="SectnoTextBox" runat="server" Text='<%# Bind("Sectno") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="FcodeTextBox" runat="server" Text='<%# Bind("Fcode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="SIDLabel1" runat="server" Text='<%# Eval("SID") %>' />
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
                              <asp:TextBox ID="SectnoTextBox" runat="server" Text='<%# Bind("Sectno") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="FcodeTextBox" runat="server" Text='<%# Bind("Fcode") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="SIDTextBox" runat="server" Text='<%# Bind("SID") %>' />
                          </td>
                      </tr>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <tr style="background-color:#DCDCDC;color: #000000;">
                          <td>
                              <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                          </td>
                          <td>
                              <asp:Label ID="SubcodeLabel" runat="server" Text='<%# Eval("Subcode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="SectnoLabel" runat="server" Text='<%# Eval("Sectno") %>' />
                          </td>
                          <td>
                              <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
                          </td>
                          <td>
                              <asp:Label ID="FcodeLabel" runat="server" Text='<%# Eval("Fcode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="SIDLabel" runat="server" Text='<%# Eval("SID") %>' />
                          </td>
                      </tr>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <table runat="server">
                          <tr runat="server">
                              <td runat="server">
                                  <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                      <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                          <th runat="server"></th>
                                          <th runat="server">Subcode</th>
                                          <th runat="server">Sectno</th>
                                          <th runat="server">column1</th>
                                          <th runat="server">Fcode</th>
                                          <th runat="server">SID</th>
                                      </tr>
                                      <tr id="itemPlaceholder" runat="server">
                                      </tr>
                                  </table>
                              </td>
                          </tr>
                          <tr runat="server">
                              <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                          </tr>
                      </table>
                  </LayoutTemplate>
                  <SelectedItemTemplate>
                      <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                          <td>
                              <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                          </td>
                          <td>
                              <asp:Label ID="SubcodeLabel" runat="server" Text='<%# Eval("Subcode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="SectnoLabel" runat="server" Text='<%# Eval("Sectno") %>' />
                          </td>
                          <td>
                              <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
                          </td>
                          <td>
                              <asp:Label ID="FcodeLabel" runat="server" Text='<%# Eval("Fcode") %>' />
                          </td>
                          <td>
                              <asp:Label ID="SIDLabel" runat="server" Text='<%# Eval("SID") %>' />
                          </td>
                      </tr>
                  </SelectedItemTemplate>
              </asp:ListView>--%>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" DeleteCommand="DELETE FROM [Section] WHERE [SID] = @SID" InsertCommand="INSERT INTO [Section] ([Subcode], [Sectno], [GR-YR], [Fcode], [SID]) VALUES (@Subcode, @Sectno, @column1, @Fcode, @SID)" SelectCommand="SELECT [Subcode], [Sectno], [GR-YR] AS column1, [Fcode], [SID] FROM [Section] ORDER BY [GR-YR]" UpdateCommand="UPDATE [Section] SET [Subcode] = @Subcode, [Sectno] = @Sectno, [GR-YR] = @column1, [Fcode] = @Fcode WHERE [SID] = @SID">
                  <DeleteParameters>
                      <asp:Parameter Name="SID" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Subcode" Type="String" />
                      <asp:Parameter Name="Sectno" Type="String" />
                      <asp:Parameter Name="column1" Type="Int32" />
                      <asp:Parameter Name="Fcode" Type="Int32" />
                      <asp:Parameter Name="SID" Type="Int32" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Subcode" Type="String" />
                      <asp:Parameter Name="Sectno" Type="String" />
                      <asp:Parameter Name="column1" Type="Int32" />
                      <asp:Parameter Name="Fcode" Type="Int32" />
                      <asp:Parameter Name="SID" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              
              

          </div>
                    
                <div class="clear"></div>
           

            <div class="clear"></div>
            
        </div>
    

</asp:Content>
