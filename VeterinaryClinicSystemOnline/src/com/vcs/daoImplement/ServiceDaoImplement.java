package com.vcs.daoImplement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vcs.dao.ServiceDAO;
import com.vcs.dbhandler.DataBaseHandler;
import com.vcs.model.Service;

public class ServiceDaoImplement implements ServiceDAO {

	
	DataBaseHandler dbh;
	
	public ServiceDaoImplement() {
		// TODO Auto-generated constructor stub
		dbh = new DataBaseHandler();
	}
	
	@Override
	public int addStaff(Service service) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateService(Service service) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteService(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Service> getAllServices() {
		// TODO Auto-generated method stub
		Statement stm = dbh.getStatment();
		List<Service> list = new ArrayList<Service>();
		String query = "SELECT * FROM service";
		try {
			ResultSet rs = stm.executeQuery(query);
			while(rs.next()){
				Service service = new Service();
				service.setServiceID(rs.getString("serviceID"));
				service.setServiceTitle(rs.getString("serviceTitle"));
				service.setUnitPrice(rs.getDouble("unitPrice"));
				service.setServiceDesp(rs.getString("serviceDesp"));
				
				list.add(service);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
