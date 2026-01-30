<%@include file="dbcon.jsp" %>
  
<%

  String iid=request.getParameter("id");

int k=stmt.executeUpdate("delete from  issue_details where issue_id='"+iid+"' ");

out.println("one record deleted");

%>

<jsp:forward page="viewissuedetails.jsp" />