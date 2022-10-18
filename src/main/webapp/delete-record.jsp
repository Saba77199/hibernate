<%@page import="com.cetpa.entity.Employee"%>
<%@page import="com.cetpa.dao.EmployeeDao"%>
<%
int id = Integer.parseInt(request.getParameter("eid"));
Employee emp = EmployeeDao.getEmployee(id);
if (emp != null) {
	EmployeeDao.deleteEmployee(emp);
	out.println("<h3>Record has been deleted</h3>");
} else {
	out.println("<h3>Record does not exist</h3>");
}
%>