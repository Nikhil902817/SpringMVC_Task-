package com.jsp.Employee_test_work.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.Employee_test_work.entity.Employee2;

public interface Emprepo extends JpaRepository<Employee2, Integer> {

}
