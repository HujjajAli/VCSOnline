package com.vcs.daoImplement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vcs.dao.StaffDAO;
import com.vcs.dbhandler.DataBaseHandler;
import com.vcs.model.Staff;

public class StaffDaoImplement implements StaffDAO{
	
	DataBaseHandler dbh;
	
	public StaffDaoImplement(){
		dbh = new DataBaseHandler();
	}

	@Override
	public int addStaff(Staff staff) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Staff updateStaff(Staff staff) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteStaff(int staffID) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Staff> getAllStaff() {
		ArrayList<Staff> list = new ArrayList<Staff>();	
		String query = "SELECT * FROM staff";
		Statement stm = dbh.getStatment();
		try {
			ResultSet rs = stm.executeQuery(query);
			while(rs.next()){
				Staff staff = new Staff();
				staff.setStaffIC(rs.getString("staffIC"));
				staff.setStaffName(rs.getString("staffName"));
				staff.setStaffAddress(rs.getString("staffAddress"));
				staff.setStaffPhone(rs.getString("staffPhone"));
				staff.setStaffPosition(rs.getString("staffPosition"));
				staff.setStaffQualification(rs.getString("staffQualification"));
				list.add(staff);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static void main(String[] args) {
		StaffDAO sd = new StaffDaoImplement();
		List<Staff> list = sd.getAllStaff();
		for(Staff s:list){
			System.out.print(s.getStaffIC());
			System.out.print("+===+"+s.getStaffName());
			System.out.println();
		}
	}

}
