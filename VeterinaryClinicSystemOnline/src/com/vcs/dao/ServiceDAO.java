package com.vcs.dao;

import java.util.List;

import com.vcs.model.Service;

public interface ServiceDAO {
	
	int addStaff(Service service);
	int updateService(Service service);
	int deleteService(int id);
	List<Service> getAllServices();
	

}
