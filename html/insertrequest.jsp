<%@include file="dbcon.jsp"%>

<%
  String s2,s3,s4,s5,s6,s7;


s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");


int k=stmt.executeUpdate("insert into request_details(farmer_name,farmer_id,equipment_id,from_date,to_date,total_day) values('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");



%>

<script>
alert("farmer request sent");
document.location="farmer_home.jsp";


</script>