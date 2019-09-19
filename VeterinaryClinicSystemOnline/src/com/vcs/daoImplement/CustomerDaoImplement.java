package com.vcs.daoImplement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vcs.dao.CustomerDAO;
import com.vcs.dbhandler.DataBaseHandler;
import com.vcs.model.Customer;

public class CustomerDaoImplement implements CustomerDAO {

	DataBaseHandler dbh;
	
	public CustomerDaoImplement() {
		// TODO Auto-generated constructor stub
		dbh = new DataBaseHandler();
	}
	
	@Override
	public Customer getCustomerById(String ic) {
		// TODO Auto-generated method stub
		Statement stm = dbh.getStatment();
		Customer c = new Customer();
		String query = "SELECT * FROM customer WHERE custIC = '"+ic+"' ";
		System.out.println("customer Query =="+query);
		try {
			ResultSet rs = stm.executeQuery(query);
			while(rs.next()){
				
				c.setCustIC(rs.getString("custIC"));
				c.setCustName(rs.getString("custName"));
				c.setCustGender(rs.getString("custGender"));
				c.setCustAddress(rs.getString("custAddress"));
				c.setCustPhoneNum(rs.getString("custPhoneNum"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}

	@Override
	public List<Customer> getAllCustomer() {
		// TODO Auto-generated method stub
		Statement stm = dbh.getStatment();
		List<Customer> list = new ArrayList<Customer>();
		String query = "SELECT * FROM customer";
		try {
			ResultSet rs = stm.executeQuery(query);
			while(rs.next()){
				Customer customer = new Customer();
				customer.setCustIC(rs.getString("custIC"));
				customer.setCustName(rs.getString("custName"));
				customer.setCustGender(rs.getString("custGender"));
				customer.setCustAddress(rs.getString("custAddress"));
				customer.setCustPhoneNum(rs.getString("custPhoneNum"));
				
				list.add(customer);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
