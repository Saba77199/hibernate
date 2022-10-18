package com.cetpa.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employeeinfo")
public class Employee {

	@Id
	@Column(name = "emp_id")
	private int eid;

	@Column(name = "emp_name")
	private String name;

	@Column(name = "emp_dept")
	private String department;

	@Column(name = "emp_salary")
	private int salary;

	public Employee() {
	}

	public Employee(int eid, String name, String department, int salary) {
		super();
		this.eid = eid;
		this.name = name;
		this.department = department;
		this.salary = salary;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String toString() {
		return "Employee [eid=" + eid + ", name=" + name + ", department=" + department + ", salary=" + salary + "]";
	}

}
