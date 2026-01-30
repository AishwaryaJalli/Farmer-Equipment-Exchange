<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">

  <title>Farmer Equipment Exchange</title>

  <link rel="stylesheet" href="../assets/css/bootstrap.css">
  
  <link rel="stylesheet" href="../assets/css/maicons.css">

  <link rel="stylesheet" href="../assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="../assets/vendor/fancybox/css/jquery.fancybox.css">

  <link rel="stylesheet" href="../assets/css/theme.css">

</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    

    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container">
        <a href="index.html" class="navbar-brand">Farmer  <span class="text-primary">Equipment</span></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">
          <ul class="navbar-nav ml-auto pt-3 pt-lg-0">
            <li class="nav-item active">
              <a href="owner_home.jsp" class="nav-link">Home</a>
            </li>
		        <li class="nav-item">
              <a href="equipment_details.jsp" class="nav-link">Add Equipment</a>
            </li>
            <!-- <li class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" id="equipmentDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Add</a>
              <div class="dropdown-menu" aria-labelledby="equipmentDropdown">
                
                
                <a href="return_details.html" class="dropdown-item">Return Details</a>
              </div>
            </li> -->
            <li class="nav-item">
              <a href="return_details.html" class="nav-link">Return Details</a>
            </li>

            <li class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" id="equipmentDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">View</a>
              <div class="dropdown-menu" aria-labelledby="equipmentDropdown">
                <!-- <a href="viewfarmerdetailsonlyfarmer.jsp" class="dropdown-item">View Farmer</a> -->
                <a href="viewequipmentdetails.jsp" class="dropdown-item">View Equipments</a>
                <a href="viewrequestdetails.jsp" class="dropdown-item">View Request</a>
                <a href="viewequipmentexchange.jsp" class="dropdown-item">View Exchange</a>
              </div>
            </li>

            
            <li class="nav-item">
              <a href="changepassword.html" class="nav-link">Change Password</a>
            </li>
            <li class="nav-item">
              <a href="login.html" class="nav-link">Logout</a>
            </li>
            
                        
            
          </ul>
        </div>
      </div> <!-- .container -->
    </nav> <!-- .navbar -->

    <!-- <div class="page-banner bg-img bg-img-parallax overlay-dark" style="background-image: url(../assets/img/home_img1.jpg);">
      <div class="container h-100">
        <div class="row justify-content-center align-items-center h-100">
          
        </div>
      </div>
    </div> .page-banner -->
  </header>

  <main>
    <div class="page-section">
      <div class="container">
        <div class="text-center">
          <h2 class="title-section mb-3">Equipment Details</h2>
          <%
  String uname=session.getAttribute("uname").toString();


    %>
        </div>
        <div class="row justify-content-center mt-5">
          <div class="col-lg-8">
            <form action="insertequipmentf.jsp" method="post" class="form-contact" >
              <div class="row">
                
                
                <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Name</label>
                  <input type="text" class="form-control" id="name" name="t2" >
                </div>
 <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Farmer Id</label>
                  <input type="text" class="form-control" id="farmerid" value=<%=uname %> name="t3" >
                </div>

<div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Address</label>
                  <input type="text" class="form-control" id="address" name="t4" >
                </div>

 <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Details</label>
                  <input type="text" class="form-control" id="details" name="t5">
                </div>

 <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Cost Per Day</label>
                  <input type="text" class="form-control" id="costperday" name="t6" >
                </div>

                
                <div class="col-12 mt-3">
                    <center>
                  <button type="submit" class="btn btn-primary px-5">Save</button></center>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->

    
  </main>


  <!-- <footer class="page-footer">
    

    <hr>

    <div class="row mt-4">
      <div class="col-md-6"> 
        <center><p>
          &copy; <span id="displayYear"></span>2025 All Rights Reserved By Farmer Equipment Exchange
        </p></center>
      </div>
      
    </div>
  </div>
</footer> -->

  
<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/vendor/fancybox/js/jquery.fancybox.min.js"></script>

<script src="../assets/vendor/isotope/isotope.pkgd.min.js"></script>

<script src="../assets/js/google-maps.js"></script>

<script src="../assets/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>

</body>
</html>