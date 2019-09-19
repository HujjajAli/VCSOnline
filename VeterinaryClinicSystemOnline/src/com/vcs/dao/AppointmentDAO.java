package com.vcs.dao;

import java.util.List;

import com.vcs.model.Appointment;

public interface AppointmentDAO {
	
	int addAppoinment(Appointment app);
	int deleteAppoinment(int appID);
	Appointment updateAppointment(Appointment app);
	List<Appointment> getAllAppoinments();

}
