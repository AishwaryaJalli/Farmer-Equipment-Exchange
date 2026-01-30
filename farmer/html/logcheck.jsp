<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>



<% 


String s1,s2,s3;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");


try
{
ResultSet rs=stmt.executeQuery("select * from login where username='"+s1+"' and type='"+s3+"' ");
if(!rs.next())
{
out.println("<b>user name not found</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");

}
else
{
	  String pwd=rs.getString(2);
	  if(s2.equals(pwd))
	  {
  session.setAttribute("uname",s1);
		
  //  String type=s3;
			
			if(s3.equals("farmer"))
			{
			%>
			<jsp:forward page = "farmer_home.jsp" />
			<%
			}
			if(s3.equals("owner"))
			{
			%>
			<jsp:forward page="owner_home.jsp"/>
			<%
			}

			
			
		}

	else
	{
		out.println("<b>invalid password..</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");
	}
}
}
catch(Exception e)
{
	  out.println(e);
}

%>