package com.cetpa.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.cetpa.entity.Employee;

public class EmployeeDao {
	static SessionFactory factory;
	static Session session;
	static {
		factory = new Configuration().configure().buildSessionFactory();
		session = factory.openSession();
	}
		public static void saveEmployee(Employee emp) {
			Transaction t = session.beginTransaction();
			session.save(emp);
			t.commit();
		}
		public static void deleteEmployee(Employee emp) {
			Transaction t = session.beginTransaction();
			session.delete(emp);
			t.commit();
		}
		public static void updateEmployee(Employee emp1, Employee emp2) {
			Transaction t = session.beginTransaction();
			emp2.setName(emp1.getName());
			emp2.setDepartment(emp1.getDepartment());
			emp2.setSalary(emp1.getSalary());
			t.commit();
		}
		public static Employee getEmployee(int eid) {
			Employee emp = session.get(Employee.class, eid);
			return emp;
		}
		public static List<Employee> getEmployeeList(){
			@SuppressWarnings("unchecked")
			Query<Employee> query = session.createQuery("from Employee");
			List<Employee> list = query.getResultList();
			return list;
			
		}
}
