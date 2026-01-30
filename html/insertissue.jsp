<%@include file="dbcon.jsp"%>

<%
  String s2,s3,s4,s5,s6,s7;


s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");

int k=stmt.executeUpdate("insert into issue_details(request_id,farmer_id,equipment_farmer_id,issue_date,time,conditions) values('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");

out.println("one record inserted");


%>

<script>
  alert("Issue has been sent Successfully ");
  document.location="owner_home.jsp";
  
  
  </script>