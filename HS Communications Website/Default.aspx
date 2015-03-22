<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HS_Communications_Website.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div id="container" class="opacity"> 
     <!-- Begin Showcase -->
    <div id="showcase" class="showcase"> 
      <!-- Each child div in #showcase represents a slide -->
      <div class="showcase-slide"> 
        <!-- Put the slide content in a div with the class .showcase-content. -->
        <div class="showcase-content">
            <img src="images/Slideshow/2.jpg" width="100%"/> </div>
      </div>
      
      <!-- Each child div in #showcase represents a slide -->
      <div class="showcase-slide"> 
        <!-- Put the slide content in a div with the class .showcase-content. -->
        <div class="showcase-content"> <img src="images/Slideshow/3.jpg" width="100%"/> </div>
        <div class="showcase-caption">
				Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit.
		</div>
      </div>
      
      <div class="showcase-slide"> 
        <!-- Put the slide content in a div with the class .showcase-content. -->
        <div class="showcase-content">
            <img src="images/Slideshow/4.jpg" width="100%" /> </div>
      </div>
    </div>
    <!-- End Showcase -->
    <div class="intro">To all candidates for graduation, Batch 2015; Deadline of submission of the exit clearance to the Office of the Registrar is on March 20, 2015</div>
    <div class="hr2"></div>
    <!-- Divider --> 
    
    <!-- Begin Top Columns -->
   
    <div class="three-fourth">
         <h2>Message from the Principal</h2>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It gives me a great pleasure as Principal of the Colegio de San Juan de Letran – Bataan High School to welcome you to the official high school website. This website has been prepared in the hope that it will become a valuable source of school news and timely 
          information for parents, students, and visitors to the site.</p> <br/> 
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This website has been developed to enable everyone to become familiar with our school, its policies, and other procedures that are basic for the smooth operation of our school, as well as to provide you with updated school news, schedule and events.   </p>
   <br/> 
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Our school has a very long historic tradition and our staff takes great pride in providing a safe and secured learning environment and at the same time offering a wide array of exciting and challenging academic programs. Our extensive line-up of extra-curricular activities, both academic and recreational, is unparalleled. Our entire staff is committed to establishing a school environment that allows our students to flourish and to grow intellectually, emotionally, and socially.</p>
        <br/> 
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; With this in mind , our website will be updated regularly so as to provide visitors with updated notices and bulletins and other news on a variety of subject matters. I am encouraging Letran High School staff members, as well as the Family Council, the school clubs and organizations to be regular contributors to the website.</p>

    </div>
    <div class="one-fourth last">
        <h2>Important Dates</h2>
        <ul class="latest-posts">
          <li><span class="date"><em class="day">27</em><em class="month">Mar</em></span> <a href="#">Baccalaureate <br />Mass</a> </li>
          <li><span class="date"><em class="day">30</em><em class="month">Mar</em></span> <a href="#">1st Commencement Exercises </a> </li>
          <li><span class="date"><em class="day">7</em><em class="month">Apr</em></span> <a href="#">Deadline for Encoding of Grades</a> </li>
          <li><span class="date"><em class="day">13</em><em class="month">Apr</em></span> <a href="#">Start of Regular Enrollment</a> </li>
              <li><span class="date"><em class="day">22</em><em class="month">Jun</em></span> <a href="#">Start of Regular Classes</a> </li>
        </ul>
    </div>
    <!-- End Top Columns -->
   

    <div class="clear"></div>
    <div class="hr1"></div>
    <!-- Divider --> 
    
    <!-- Begin Latest Works -->
    <h2>Recent Events Pictures</h2>
    <div class="carousel">
      <div id="carousel-scroll"><a href="#" id="prev">Prev</a><a href="#" id="next">Next</a></div>
      <ul>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/c1.jpg" alt="" /> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/c2.jpg" alt="" /> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/c3.jpg" alt="" /> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/c4.jpg" alt="" /> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/c5.jpg" alt="" /> </a> </li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/c6.jpg" alt="" /> </a> </li>
      </ul>
    </div>
    <!-- End Latest Works -->
    
    <div id="footer">
      <div class="footer-top"></div>
      <!-- Divider -->
   
      
      
      
      <div class="clear"></div>
    </div>
  </div>
</asp:Content>
