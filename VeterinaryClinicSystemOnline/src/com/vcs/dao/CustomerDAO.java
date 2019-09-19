package com.vcs.dao;

import java.util.List;

import com.vcs.model.Customer;

public interface CustomerDAO {
	
	Customer getCustomerById(String ic);
	List<Customer> getAllCustomer();

}
