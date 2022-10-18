<%@page import="com.cetpa.dao.EmployeeDao"%>
<%@page import="com.cetpa.entity.Employee"%>
<%@page import="java.util.List"%>
<%
List<Employee> list = EmployeeDao.getEmployeeList();
%>
<table border="1">
	<tr>
		<th>Employee Id</th>
		<th>Employee name</th>
		<th>Employee Department</th>
		<th>Employee salary</th>
	</tr>
	<%
	for (Employee emp : list) {
	%>
	<tr>
		<td><%=emp.getEid()%></td>
		<td><%=emp.getName()%></td>
		<td><%=emp.getDepartment()%></td>
		<td><%=emp.getSalary()%></td>
	</tr>
	<%}%>


</table>