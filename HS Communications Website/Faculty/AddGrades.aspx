<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacuMaster.Master" AutoEventWireup="true" CodeBehind="AddGrades.aspx.cs" Inherits="HS_Communications_Website.Faculty.AddGrades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div id="container" class="opacity">
            <div class="full-width">
           
                    <h2>Update Grades</h2>
                
                 <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                  Grades Successfully updated.</h2></asp:Panel>

                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>

                
                  <span>Subject: <asp:Label ID="subLbl" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Section:  <asp:Label ID="secLbl" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  Teacher: <asp:Label ID="teachLbl" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="InsertEqui" runat="server" Text="Insert Equivalent" CssClass="buttonn alert" OnClick="InsertEqui_Click" BackColor="Red"/>
              <asp:Button ID="UpdateButton" runat="server" Text="Save Grades" CssClass="buttonn" OnClick="UpdateButton_Click" Visible="False"/> </span>

                
                

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [first], [second], [third], [fourth], [SMTRID], [name] FROM [SMTRView] WHERE (([Subcode] = @Subcode) AND ([Sectno] = @Sectno))" DeleteCommand="DELETE FROM [SMTRview] WHERE [SMTRID] = @SMTRID" InsertCommand="INSERT INTO [SMTRview] ([first], [second], [third], [fourth], [SMTRID]) VALUES (@first, @second, @third, @fourth, @SMTRID)" UpdateCommand="UPDATE [SMTRView] SET [first] = @first, [second] = @second, [third] = @third, [fourth] = @fourth WHERE [SMTRID] = @SMTRID">
                        <DeleteParameters>
                            <asp:Parameter Name="SMTRID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="first" Type="String" />
                            <asp:Parameter Name="second" Type="String" />
                            <asp:Parameter Name="third" Type="String" />
                            <asp:Parameter Name="fourth" Type="String" />
                            <asp:Parameter Name="SMTRID" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="Subcode" SessionField="subcode" Type="String" />
                            <asp:SessionParameter Name="Sectno" SessionField="sectno" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="first" Type="String" />
                            <asp:Parameter Name="second" Type="String" />
                            <asp:Parameter Name="third" Type="String" />
                            <asp:Parameter Name="fourth" Type="String" />
                            <asp:Parameter Name="SMTRID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                   <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="SMTRID" OnRowDataBound="GridView1_RowDataBound">
                       <Columns>
                            <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                           <asp:TemplateField HeaderText="first" SortExpression="first">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("first") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:TextBox ID="firstTxtbox" runat="server" Text='<%# Bind("first") %>'></asp:TextBox>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="second" SortExpression="second">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("second") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:TextBox ID="secondTxtbox" runat="server" Text='<%# Bind("second") %>'></asp:TextBox>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="third" SortExpression="third">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("third") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:TextBox ID="thirdTxtbox" runat="server" Text='<%# Bind("third") %>'></asp:TextBox>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="fourth" SortExpression="fourth">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("fourth") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:TextBox ID="fourthTxtbox" runat="server" Text='<%# Bind("fourth") %>'></asp:TextBox>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:BoundField DataField="SMTRID" HeaderText="SMTRID" ReadOnly="True" SortExpression="SMTRID" />
                          
                       </Columns>
                    </asp:GridView>
                

                
                

                <div class="clear">
                 
                    </div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
