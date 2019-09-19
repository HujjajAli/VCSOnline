package com.vcs.daoImplement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vcs.dao.AppointmentDAO;
import com.vcs.dbhandler.DataBaseHandler;
import com.vcs.model.Appointment;

public class AppointmentDaoImplement implements AppointmentDAO {
	
	DataBaseHandler dbh;
	
	 public AppointmentDaoImplement() {
		// TODO Auto-generated constructor stub
		 dbh = new DataBaseHandler();
	}

	@Override
	public int addAppoinment(Appointment app) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteAppoinment(int appID) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Appointment updateAppointment(Appointment app) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Appointment> getAllAppoinments() {
		Statement stm = dbh.getStatment();
		List<Appointment> list = new ArrayList<Appointment>();
		String query = "SELECT * FROM schedule";
		
		try {
			ResultSet rs = stm.executeQuery(query);
			while(rs.next()){
				Appointment app = new Appointment();
				app.setAppID(rs.getString("appID"));
				app.setAppDate(rs.getString("appDate"));
				app.setAppTime(rs.getString("appTime"));
				app.setCustName(rs.getString("custName"));
				app.setCustPhoneNum(rs.getString("custPhoneNum"));
				app.setStatus(rs.getString("status"));
				
				list.add(app);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
