<%@include file="dbcon.jsp"%>

<%
  String s1,s2,s3,s4,s5;

s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");


int k=stmt.executeUpdate("insert into equipment_exchange values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");

out.println("one record inserted");


%>
<script>
  alert("Exchanging Equipment is Successfully Done");
  document.location="farmer_home.jsp";
  
  
  </script>