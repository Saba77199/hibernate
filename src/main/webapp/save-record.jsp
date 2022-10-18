<%@page import="com.cetpa.entity.Employee"%>
<%@page import="com.cetpa.dao.EmployeeDao"%>
<%
int id = Integer.parseInt(request.getParameter("eid"));
String na = request.getParameter("name");
String dept = request.getParameter("department");
int sal = Integer.parseInt(request.getParameter("salary"));
Employee emp = new Employee(id, na, dept, sal);
EmployeeDao.saveEmployee(emp);
%>
<h3>Record has been saved...</h3>