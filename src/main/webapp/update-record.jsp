<%@page import="com.cetpa.entity.Employee"%>
<%@page import="com.cetpa.dao.EmployeeDao"%>
<%
int id = Integer.parseInt(request.getParameter("eid"));
Employee oemp = EmployeeDao.getEmployee(id);
if (oemp != null) {
	String na = request.getParameter("name");
	String department = request.getParameter("department");
	int salary = Integer.parseInt(request.getParameter("salary"));
	Employee nemp = new Employee(id,na,department,salary);
	EmployeeDao.updateEmployee(nemp,oemp);
	out.println("<h3>Record has been deleted</h3>");
} else {
	out.println("<h3>Record does not exist</h3>");
}
%>