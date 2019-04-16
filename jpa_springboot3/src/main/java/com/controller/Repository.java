package com.controller;

import org.springframework.data.repository.CrudRepository;

public interface Repository extends CrudRepository<Employee, Integer>{

	Employee findEmployeeById(int empid);

}
