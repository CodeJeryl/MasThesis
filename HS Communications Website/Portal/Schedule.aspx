<%@ Page Title="" Language="C#" MasterPageFile="~/Portal/PortMaster.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="HS_Communications_Website.Portal.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container" class="opacity">
            <div class="full-width">
           <h2>Class Schedule: <asp:Label ID="SchedLbl" runat="server" Text="Label"></asp:Label></h2>
                   
 <asp:Image ID="Image1" runat="server" Height="607px" Width="900px" /> <br/>
    <span style="margin-left: 80%">
        <asp:Button ID="Button1" runat="server" Text="Print Schedule" CssClass="buttonn"/></span>
                <div class="clear"></div>
            </div>
        
        
          <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                   Message Successfully Sent! We will reply ASAP. Check your Inbox regularly. Thank you!</h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
        
        <div class="one-half">
            <h2>Contact Us</h2>
            <br/>
            <div style="font-size: large">
            <strong>COLEGIO DE SAN JUAN DE LETRAN</strong> <br/>
            HIGH SCHOOL DEPARTMENT<br/><br/>
            <strong>Address:</strong> Dominican Avenue, Abucay, Bataan 2114</div>
            <br/>
            <br/>
           <h3>Contact Numbers</h3>
             
                 <ul style="font-size: large; list-style-type: disc; margin-left: 50px">
        <li>    Office of the Principal - (047) 237-9432 </li>
              <li>     Financial Affairs - (047) 237-9433 </li>
              <li>     Rector's Office - (047) 237-9370 local 101 </li>
              <li>     Admission's Office - (047) 237-9370 local 102 </li>
              <li>     Guidance Office - (047) 237-9370 local 106 </li>
               <li>    Library - (047) 237-9370 local 112 </li>
                    </ul>
                 </div>
      
        
        <div class="one-half last">
           <h2> Leave us a Message</h2>
            <br/>
            Subject: <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field." ControlToValidate="TextBox1" ValidationGroup="s"></asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            Message:  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field." ControlToValidate="TextBox2" ValidationGroup="s"></asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            
        <span style="padding-left: 250px">    <asp:Button ID="sendMsgBtn" runat="server" Text="Send Message" CssClass="buttonn" OnClick="sendMsgBtn_Click" ValidationGroup="s" /></span>
            
            <br/> <br/>
            
            <h2>Inbox - lipat sa ibang page nlng to</h2>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HsDbConnectionString %>" SelectCommand="SELECT [msgId], [senderName], [subject], [date], [status] FROM [personalMsgTbl] WHERE (([studno] = @studno) AND ([admin] = @admin)) ORDER BY [date] DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="studno" SessionField="studno" Type="Int32" />
                    <asp:Parameter DefaultValue="true" Name="admin" Type="Boolean" />
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
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
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
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No Message Available.</td>
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
                            <asp:TextBox ID="senderNameTextBox" runat="server" Text='<%# Bind("senderName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #FFFBD6;color: #333333;">
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("msgId") %>'/> 
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("status") %>' />
                        </td>
                            <td>
                                <asp:Button ID="readBtn" runat="server" Text="Read" CommandName="read" CssClass="buttonn"/>
                                <asp:Button ID="delBtn" runat="server" Text="Delete" CommandName="del" CssClass="buttonn" OnClientClick="javascript:return confirm('Delete Message?');"/>
                            </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                      <th runat="server">senderName</th>
                                        <th runat="server">subject</th>
                                        <th runat="server">date</th>
                                        <th id="Th2" runat="server">Status</th>
                                          <th id="Th1" runat="server">Controls</th>
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
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="senderNameLabel" runat="server" Text='<%# Eval("senderName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            
        </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>

</asp:Content>
