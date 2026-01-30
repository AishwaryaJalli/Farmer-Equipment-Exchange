<%@include file="dbcon.jsp" %>
  
<%

  String eid=request.getParameter("id");

int k=stmt.executeUpdate("delete from  equipment_details where equipment_id='"+eid+"' ");

out.println("one record deleted");

%>

<jsp:forward page="myviewequipmentdetails.jsp" />