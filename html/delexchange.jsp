<%@include file="dbcon.jsp" %>
  
<%

  String eid=request.getParameter("id");

int k=stmt.executeUpdate("delete from  equipment_exchange where equipment_owner='"+eid+"' ");

out.println("one record deleted");

%>

<jsp:forward page="viewequipmentexchange.jsp" />