package com.techpalle.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity  //which class to be mapped with database
public class Employee {
	@Id //specifies which column contains primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "Employee_name")
	private String ename;
	private int salary;
	
	public Employee()
	{
		
	}
	public Employee(int id, String ename, int salary) {
		super();
		this.id = id;
		this.ename = ename;
		this.salary = salary;
	}
	public Employee(String ename, int salary) {
		super();
		this.ename = ename;
		this.salary = salary;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	
	
}

