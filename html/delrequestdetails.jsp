<%@include file="dbcon.jsp" %>
  
<%

  String rid=request.getParameter("id");

int k=stmt.executeUpdate("delete from  request_details where request_id='"+rid+"' ");

out.println("one record deleted");

%>

<jsp:forward page="viewrequestdetails.jsp" />