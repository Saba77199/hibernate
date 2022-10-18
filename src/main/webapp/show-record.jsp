<%@page import="com.cetpa.entity.Employee"%>
<%@page import="com.cetpa.dao.EmployeeDao"%>
<%
int id = Integer.parseInt(request.getParameter("eid"));
Employee emp = EmployeeDao.getEmployee(id);
if (emp != null) {
%>
<table border="1" width="30%">
	<tr>
		<th>Employee id</th>
		<td><%=emp.getEid()%></td>
	</tr>
	<tr>
		<th>Employee name</th>
		<td><%=emp.getName()%></td>
	</tr>
	<tr>
		<th>Employee department</th>
		<td><%=emp.getDepartment()%></td>
	</tr>
	<tr>
		<th>Employee salary</th>
		<td><%=emp.getSalary()%></td>
	</tr>
</table>
<%
} else {
%>
<h3 style="color: red">Record does not exist..</h3>
<%
}
%>