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

  <div class="back-to-top"></div>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container">
        <a href="farmer_home.jsp" class="navbar-brand">Farmer <span class="text-primary">Equipment</span></a>
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
              <a href="equipment_details.jsp" class="nav-link">Add Equipment</a>
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
      </div>
    </nav>
  </header>

  <main>
    <div class="page-section">
      <div class="container">
        <div class="text-center">
          <h2 class="title-section mb-3">Request Details</h2>
          <%
            String eid = request.getParameter("id");
            String ofname = request.getParameter("fname");
            String fname = session.getAttribute("uname").toString();
          %>
        </div>
        <div class="row justify-content-center mt-5">
          <div class="col-lg-8">
            <form action="insertrequest.jsp" method="post" class="form-contact">
              <div class="row">
                <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Farmer Name</label>
                  <input type="text" class="form-control" id="name" name="t2" value="<%=fname %>">
                </div>
                <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Farmer ID</label>
                  <input type="text" class="form-control" id="farmerid" name="t3" value="<%=ofname %>">
                </div>
                <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Equipment ID</label>
                  <input type="text" class="form-control" id="equipmentid" name="t4" value="<%=eid %>">
                </div>
                <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">From Date</label>
                  <input type="date" class="form-control" id="fromdate" name="t5" onchange="calculateDays()">
                </div>
                <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">To Date</label>
                  <input type="date" class="form-control" id="todate" name="t6" onchange="calculateDays()">
                </div>
                <div class="col-12 py-2">
                  <label for="subject" class="fg-grey">Total Days</label>
                  <input type="text" class="form-control" id="totalday" name="t7" readonly>
                </div>
                <div class="col-12 mt-3">
                  <center><button type="submit" class="btn btn-primary px-5">Save</button></center>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>

  <script>
    function calculateDays() {
      const fromDate = document.getElementById('fromdate').value;
      const toDate = document.getElementById('todate').value;

      if (fromDate && toDate) {
        const from = new Date(fromDate);
        const to = new Date(toDate);

        const differenceInTime = to - from;
        const differenceInDays = differenceInTime / (1000 * 3600 * 24);

        document.getElementById('totalday').value = differenceInDays >= 0 ? differenceInDays : 0;
      }
    }
  </script>

  <script src="../assets/js/jquery-3.5.1.min.js"></script>
  <script src="../assets/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>
  <script src="../assets/vendor/wow/wow.min.js"></script>
  <script src="../assets/vendor/fancybox/js/jquery.fancybox.min.js"></script>
  <script src="../assets/vendor/isotope/isotope.pkgd.min.js"></script>
  <script src="../assets/js/theme.js"></script>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>
</body>
</html>
