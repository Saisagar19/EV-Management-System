<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EV charging Station</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Presento
  * Updated: Aug 30 2023 with Bootstrap v5.3.1
  * Template URL: https://bootstrapmade.com/presento-bootstrap-corporate-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="index.html">EV Charging Station<span></span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
       <ul>
          <li><a class="nav-link scrollto" href="UserHome.jsp">Home</a></li>
       <!--  <li><a class="nav-link scrollto" href="CreateEvbook.jsp">EV Book</a></li> -->
          <li><a class="nav-link scrollto active" href="Viewbookdetails.jsp">ViewBookingDetails</a></li>
          
          <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String name=(String)session.getAttribute("name");  
	                out.print(" "+name+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                                       
              <li><a href="Home.jsp">Logout</a></li> 
       
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

     
    </div>
  </header><!-- End Header -->

  

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio" ><br><br>
    <div class="portfolio">
      <div class="container" data-aos="fade-up" >

        <div class="section-title">
          <h2 style="color:#fff;">View EV Station Booking Details</h2>
          <!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p> -->
        </div>
        
         <div class="row">
      
  
          <div class="col-md-12">
						<!-- <div class="col-lg-12">
							<div class="text-center color-elements">
								<br><br><br>
							<h2><b>View Users Data</b></h2>
						<br><br>
							</div>
						</div> -->
						<div class="col-sm-offset-2 col-lg-12 ">
						 <form class="subscription-form">
                    <div style="margin-left:20px;margin-right:20px">
                    <table class="table table-bordered" style="color:black">
                   
                     <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from bookevstation");
                     //while(rs.next())
                     if(rs.next() == false) {
                    	%>
                    	<h4 style="text-align:right;margin-right:70px"><b>No Student Present</b></h4>
                    	<%
                     }
                    else{
                    	int count=0;
                    	do{	 
                    	 if(count == 0) {	
                    	 %>
                    	 <tr  class="danger" style="color:black">
                    	  <th>Name</th>
		                  <th>Vehical Name</th>
		                     <th>Vehical No</th>
		                      <th>City</th>
		                     <th>Area</th>
						 <th>Time</th> 
						 <th>Date</th>
		                    <!--   <th>accountname</th>
		                     <th>accountno</th>
						 <th>ifsc</th>  -->
						 <th>Amount</th> 
						<!--  <th>Action</th>  -->
		                  </tr>
		                  <%}%>
                    	 <TR>
                    	 <%-- <td style="color:black"><%=rs.getString(1) %></td> --%>
                    	 <td style="color:black"><%=rs.getString(2) %></td>
                    	  <td style="color:black"><%=rs.getString(3) %></td> 
                    	<td style="color:black"><%=rs.getString(4) %></td> 
                    	<td style="color:black"><%=rs.getString(5) %></td> 
                    	<td style="color:black"><%=rs.getString(6) %></td>
                    	<td style="color:black"><%=rs.getString(7) %></td> 
                    	<td style="color:black"><%=rs.getString(8) %></td> 
                    	<%-- <td style="color:black"><%=rs.getString(9) %></td> 
                    	<td style="color:black"><%=rs.getString(10) %></td>
                    	<td style="color:black"><%=rs.getString(11) %></td>  --%>
                    	<td style="color:black"><%=rs.getString(12) %></td> 
                    
                    	<%-- <td style="color:black"><a href="<%=rs.getString(4) %>" style="color:blue;"><%=rs.getString(4) %></a></td> --%>
                    	
                    	<%--  <td><a style="color:red;" href="DeleteMeetingLinkCon?id=<%=rs.getInt(1)%>"><b>Delete</b></a></td>
                    	 --%> </TR>                    	 
                    <%count++; }while(rs.next());}%> 
                   
                    </table>     
                  </form>
						</div></div></div>
         </div>
</div>
      

        </div>

      
    </section><!-- End Portfolio Section -->

 
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>