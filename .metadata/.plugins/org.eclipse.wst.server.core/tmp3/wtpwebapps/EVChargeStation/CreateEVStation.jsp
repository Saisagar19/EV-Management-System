<!DOCTYPE html>
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
  
  <style>
  button {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  border-radius: 12px;
}
  </style>
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
          <li><a class="nav-link scrollto" href="AdminHome.jsp">Home</a></li>
          <li><a class="nav-link scrollto active" href="CreateEvbook.jsp">Create EV Station</a></li>
          <li><a class="nav-link scrollto" href="Viewbookdetails.jsp">ManageStationDetails</a></li>
          <!--  <li><a class="nav-link scrollto" href="ViewRechargeslots.jsp">ManageRechageSlots</a></li>
         -->  <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String name=(String)session.getAttribute("name");  
	                out.print(" "+name+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                                       
              <li><a href="Home.jsp">Logout</a></li> 
          <!-- <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
          <li><a href="blog.html">Blog</a></li>
          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li> -->
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

   
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="admin"  style="height:100%;">
  <!-- <div class="carousel-item active" style="background-image: url(assets/img/home2.jpg)"> -->
<br>
<div class="container" data-aos="zoom-out" data-aos-delay="100"> 
      <div class="row">
        <div class="col-lg-2">
        </div>
        <div class="col-lg-8"> 
        <br>

<div class="row justify-content-center">
        
      
          
          
          <div class="col-xl-6 col-lg-6 pt-5 pt-lg-0" >
           
            <div class="text-center">
            <div class="icon-box" data-aos="fade-up">
            <h2>Create EV Book Details</h2><br>
            <br>
             <form action="EVCreateStationServlet" method="post" >
             <div class="form-group mt-1">
            <input type="text" name="ownername" class="form-control" id="ownername"   value="${name}" readonly>
          </div>
          <div class="form-group mt-1">
          <input type="text" name="address" class="form-control" id="address"   placeholder="Enter your EV station address" required>
          </div>
          <div class="form-group mt-1">
          <input type="text" name="area" class="form-control" id="area"   placeholder="Enter your  Area" required>
          </div>
          <div class="form-group mt-1">
          <input type="text" name="city" class="form-control" id="city"   placeholder="Enter your  City" required>
         </div>
         <div class="form-group mt-1">
          <input type="text" name="path" class="form-control" id="path"   placeholder="Enter Location path" required>
           </div>
           <div class="form-group mt-1">
          <input type="text" name="mobileno" class="form-control" id="mobileno" value="${mobileno}" required>
         </div>
         <div class="form-group mt-1">
           <input type="text" name="slot" class="form-control" id="slot"   placeholder="Enter Number of Slots" required> 
         </div>
         <div class="form-group mt-1">
           <input type="text" name="capacity" class="form-control" id="capacity"   placeholder="Enter slot capacity" required> <br>
             </div>
             <div class="text-center">
             <button type="submit"  class="button" >Book</button> 
                   
			</div>
			</form>
			</div>
			</div>
			</div>
			</div>
     <div class="container" data-aos="zoom-out" data-aos-delay="100"> 
      <div class="row">
        <div class="col-xl-9"><br><br><br>
         <!--  <h1>Welcome to Electrical Vehicle Charging Station Management</h1><br><br>
          <h5 style="color:#00FFFF;">In the transportation networks, the usage of battery electric cars (BEVs) and plug-in hybrid electric vehicles (PHEVs) results in a large decrease in the consumption of fossil fuels, which has a direct impact on air pollution. Therefore, one of the primary goals of government policy on air quality and decarburization is boosting the rate of EV deployment</h5>
          <a href="AdminHome.jsp" class="btn-get-started scrollto">Get Started</a> -->
        </div>
      </div>
    </div></div></div></div>

  </section><!-- End Hero -->

  <main id="main">

  

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