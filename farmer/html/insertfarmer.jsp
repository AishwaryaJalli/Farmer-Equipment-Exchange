<%@include file="dbcon.jsp"%>

<%
  String s2,s3,s4,s5,s6,s7;


s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");


int k=stmt.executeUpdate("insert into farmer_details(farmer_name,aadhar_no,address,contact_no,village_name) values('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");

int j=stmt.executeUpdate("insert into login values('"+s2+"','"+s5+"','"+s7+"')");

out.println("one record inserted");


%>
<script>
  alert("Registered Successfully");
  document.location="login.html";
  
  
  </script>