package com.vcs.dao;

import java.util.List;

import com.vcs.model.Staff;

public interface StaffDAO {
	
	int addStaff(Staff staff);
	Staff updateStaff(Staff staff);
	int deleteStaff(int staffID); 
	List<Staff> getAllStaff();

}
