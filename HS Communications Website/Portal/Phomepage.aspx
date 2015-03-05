<%@ Page Title="" Language="C#" MasterPageFile="~/Portal/PortMaster.Master" AutoEventWireup="true" CodeBehind="Phomepage.aspx.cs" Inherits="HS_Communications_Website.Portal.Phomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
      
 <div id="container" class="opacity">
            <div class="full-width">
              <%--  <div class="one-third">
                    <img src="../style/images/art/about.jpg" alt="" /></div>
                <div class="two-third last">--%>
                    <h2>Inbox</h2>
                
              <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                  <AlternatingItemTemplate>
                      <tr style="background-color: #FAFAD2;color: #284775;">
                          <td>
                              <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                          </td>
                          <td>
                              <asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' />
                          </td>
                          <td>
                              <asp:Label ID="userlvlLabel" runat="server" Text='<%# Eval("userlvl") %>' />
                          </td>
                      </tr>
                  </AlternatingItemTemplate>
                  <EditItemTemplate>
                      <tr style="background-color: #FFCC66;color: #000080;">
                          <td>
                              <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                              <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                          </td>
                          <td>
                              <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="senderTextBox" runat="server" Text='<%# Bind("sender") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="userlvlTextBox" runat="server" Text='<%# Bind("userlvl") %>' />
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
                              <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="senderTextBox" runat="server" Text='<%# Bind("sender") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="userlvlTextBox" runat="server" Text='<%# Bind("userlvl") %>' />
                          </td>
                      </tr>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <tr style="background-color: #FFFBD6;color: #333333;">
                          <td>
                              <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                          </td>
                          <td>
                              <asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' />
                          </td>
                          <td>
                              <asp:Label ID="userlvlLabel" runat="server" Text='<%# Eval("userlvl") %>' />
                          </td>
                      </tr>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <table runat="server">
                          <tr runat="server">
                              <td runat="server">
                                  <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                      <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                          <th runat="server">title</th>
                                          <th runat="server">sender</th>
                                          <th runat="server">userlvl</th>
                                      </tr>
                                      <tr id="itemPlaceholder" runat="server">
                                      </tr>
                                  </table>
                              </td>
                          </tr>
                          <tr runat="server">
                              <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                  <asp:DataPager ID="DataPager1" runat="server">
                                      <Fields>
                                          <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                      </Fields>
                                  </asp:DataPager>
                              </td>
                          </tr>
                      </table>
                  </LayoutTemplate>
                  <SelectedItemTemplate>
                      <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                          <td>
                              <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                          </td>
                          <td>
                              <asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' />
                          </td>
                          <td>
                              <asp:Label ID="userlvlLabel" runat="server" Text='<%# Eval("userlvl") %>' />
                          </td>
                      </tr>
                  </SelectedItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [title], [sender], [userlvl] FROM [msgTbl] WHERE [parent] = @parent AND [section] IN (@section,'all')">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="false" Name="parent" SessionField="parent" Type="Boolean" />
                        <asp:SessionParameter DefaultValue="all" Name="section" SessionField="section" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                

                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
