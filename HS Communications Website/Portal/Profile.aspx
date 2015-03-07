<%@ Page Title="" Language="C#" MasterPageFile="~/Portal/PortMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="HS_Communications_Website.Portal.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="container" class="opacity">
            <div class="full-width">
                <asp:Panel ID="Panel1" runat="server" CssClass="info-box" Visible="False"><h2 style="text-align: center">
                  Profile Update Successful.</h2></asp:Panel>
                  <asp:Panel ID="ErrorPanel" runat="server" CssClass="warning-box" Visible="False"><h2>
                    <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label></h2></asp:Panel>
                

                 <h2>Student Information</h2>
                <div class="one-third">
                    <p>Last Name:  <asp:TextBox ID="lastnameTxtbox" runat="server"></asp:TextBox> </p> 
                    </div>
                <div class="one-third">
                   
                  <p>First Name:  <asp:TextBox ID="firstnameTxtbox" runat="server"></asp:TextBox></p>
                  </div>
                <div class="one-third last">
                      <p>Middle Name:  <asp:TextBox ID="midnametxtbox" runat="server" ></asp:TextBox></p>
                 </div>
          
                      <p>School Last Attended:  <asp:TextBox ID="lastattendTxtbox" runat="server" ></asp:TextBox></p>
                       
                 <p>School Address:  <asp:TextBox ID="schoolAddTxtbox" runat="server" ></asp:TextBox></p>
                
                 <div class="one-third">
                    <p>Date of Birth: (MM/DD/YYYY) <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </p> 
                    </div>
                <div class="one-third">
                   
                  <p>Place of Birth  <asp:TextBox ID="placeBtxtbox" runat="server"></asp:TextBox></p>
                  </div>
                <div class="one-third last">
                      <p>Gender: <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                      </asp:RadioButtonList></p>
                 </div>
                
                <div class="one-half"><p> Mobile No. : <asp:TextBox ID="mobileTxtbox" runat="server"></asp:TextBox></p></div>
                
                     <div class="one-half last"><p> Email Address : <asp:TextBox ID="emailAddTxtbox" runat="server"></asp:TextBox></p></div>
                
                <asp:Panel ID="parentsPanel" runat="server">
                     <h2>Parent/Guardian Information</h2>
                     <div class="one-third">
                    <p>Mothers's Name:  <asp:TextBox ID="MnameTxtbox" runat="server"></asp:TextBox> </p> 
                    </div>
                <div class="one-third">
                   
                  <p>Tel. no:  <asp:TextBox ID="MtelNoTxtbox" runat="server"></asp:TextBox></p>
                  </div>
                <div class="one-third last">
                      <p>Mobile no.:  <asp:TextBox ID="MMobileTxtbox" runat="server" ></asp:TextBox></p>
                 </div>
                    
                    <div class="one-half">
                       <p>  Occupation:  <asp:TextBox ID="MoccuTxtbox" runat="server" ></asp:TextBox></p>

                    </div>
                     <div class="one-half last">
                       <p>Address:  <asp:TextBox ID="MaddressTxtbox" runat="server" TextMode="MultiLine" ></asp:TextBox></p>

                    </div>
                    

                          <div class="one-third">
                    <p>Fathers's Name:  <asp:TextBox ID="FnameTxtbox" runat="server"></asp:TextBox> </p> 
                    </div>
                <div class="one-third">
                   
                  <p>Tel. no:  <asp:TextBox ID="FtelTxtbox" runat="server"></asp:TextBox></p>
                  </div>
                <div class="one-third last">
                      <p>Mobile no.:  <asp:TextBox ID="FmobTxtbox" runat="server" ></asp:TextBox></p>
                 </div>
                    
                    <div class="one-half">
                       <p>  Occupation:  <asp:TextBox ID="FoccuTxtbox" runat="server" ></asp:TextBox></p>

                    </div>
                     <div class="one-half last">
                       <p>Address:  <asp:TextBox ID="FaddressTxtbox" runat="server" TextMode="MultiLine" ></asp:TextBox></p>

                    </div>
                </asp:Panel>
                
                

                <span style="margin: 80%"> <asp:Button ID="Button1" runat="server" Text="Update Profile" CssClass="buttonn" OnClick="Button1_Click"/></span>
                <div class="clear"></div>
            </div>
            <!-- End Full Width -->

            <div class="clear"></div>
            
        </div>
</asp:Content>
