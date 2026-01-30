<%@include file="dbcon.jsp" %>
  
<%

  String iid=request.getParameter("id");

int k=stmt.executeUpdate("delete from  return_details where issue_id='"+iid+"' ");

out.println("one record deleted");

%>

<jsp:forward page="viewreturndetails.jsp" />