<%@include file="dbcon.jsp" %>
  
<%

  String fid=request.getParameter("id");

int k=stmt.executeUpdate("delete from  farmer_details where farmer_id='"+fid+"' ");

out.println("one rec deleted");

%>

<jsp:forward page="viewfarmerdetails.jsp" />