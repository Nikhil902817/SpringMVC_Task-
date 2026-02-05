package com.jsp.Employee_test_work.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Employee2 {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name; 
	private String skill; 
	private double sal;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	@Override
	public String toString() {
		return "Employee1 [id=" + id + ", name=" + name + ", skill=" + skill + ",  sal=" + sal + "]";
	}
	public Employee2() {
	}
	

}
