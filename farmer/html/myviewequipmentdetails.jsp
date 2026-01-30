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
        <a href="owner_home.jsp" class="navbar-brand">Farmer <span class="text-primary">Equipment</span></a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbarContent">
          <ul class="navbar-nav ml-auto pt-3 pt-lg-0">
            <li class="nav-item active">
              <a href="farmer_home.jsp" class="nav-link">Home</a>
            </li>
                       
            
            <li class="nav-item">
              <a href="viewequipmentdetails.jsp" class="nav-link">Request Equipment</a>
            </li>
            <li class="nav-item">
              <a href="equipment_detailsf.jsp" class="nav-link">Add Equipment</a>
            </li>
	    <li class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" id="equipmentDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">View</a>
              <div class="dropdown-menu" aria-labelledby="equipmentDropdown">
                <a href="myviewequipmentdetails.jsp" class="dropdown-item">My Equipment</a>
                <a href="viewissuedetails.jsp" class="dropdown-item">View Issue</a>
                <a href="viewmyrequestdetails.jsp" class="dropdown-item">View My Request</a>
                
              </div>
            </li>
            	    <li class="nav-item">
              <a href="exchangeequipment.jsp" class="nav-link">Exchange</a>
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
  </header>

  <%
    String fname = session.getAttribute("uname").toString();
  %>
  <main>
    <div class="page-section">
      <div class="container">
        <div class="text-center">
          <h2 class="title-section mb-3">View Equipment Details</h2>
        </div>
        <div class="row justify-content-center mt-5">
          <div class="col-lg-8">
            <form action="#" method="post" class="form-contact">
              <center>
                <table border="2">
                  <tr>
                    <td>Equipment Id</td>
                    <td>Name</td>
                    <td>Farmer Id</td>
                    <td>Address</td>
                    <td>Details</td>
                    <td>Cost Per Day</td>
                    <td>Image</td>
                    <td>Delete</td>
                  </tr>

                  <%@ include file="dbcon.jsp" %>
                  <%
                    ResultSet rs = stmt.executeQuery("select * from equipment_details where farmer_id='" + fname + "'");
                    while (rs.next()) {
                  %>
                      <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td>
                        <td><%= rs.getString(6) %></td>
                        <td><img src="./upload/<%= rs.getString(7) %>" width="200" height="200" /></td>
                        <!-- <td>
                          <a href="delequipment.jsp" onclick="confirmDelete('<%= rs.getString(1) %>')">Delete</a>
                        </td> -->
                        <td><a href="delequipment.jsp?id=<%=rs.getString(1) %>"> Delete </a> </td>
                      </tr>
                  <%
                    }
                  %>
                </table>
              </center>
            </form>
          </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->
  </main>

  <!-- <script>
    function confirmDelete(equipmentId) {
      const userConfirmed = confirm("Do you want to delete the equipment details?");
      if (userConfirmed) {
        window.location.href = `delequipment.jsp?id=${equipmentId}`;
      }
    }
  </script> -->

  <script src="../assets/js/jquery-3.5.1.min.js"></script>
  <script src="../assets/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>
  <script src="../assets/vendor/wow/wow.min.js"></script>
  <script src="../assets/vendor/fancybox/js/jquery.fancybox.min.js"></script>
  <script src="../assets/vendor/isotope/isotope.pkgd.min.js"></script>
  <script src="../assets/js/google-maps.js"></script>
  <script src="../assets/js/theme.js"></script>
</body>
</html>
