package com.vcs.daoImplement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vcs.dao.CustomerDAO;
import com.vcs.dao.PetDAO;
import com.vcs.dbhandler.DataBaseHandler;
import com.vcs.model.Pet;

public class PetDaoImplement implements PetDAO {

	DataBaseHandler dbh;
	CustomerDAO cdao;
	
	public PetDaoImplement() {
		// TODO Auto-generated constructor stub
		dbh = new DataBaseHandler();
		cdao = new CustomerDaoImplement();
	}
	
	@Override
	public List<Pet> getAllPet() {
		// TODO Auto-generated method stub
		Statement stm = dbh.getStatment();
		List<Pet> list = new ArrayList<Pet>();
		String query = "SELECT * FROM pet";
		try {
			ResultSet rs = stm.executeQuery(query);
			while(rs.next()){
				Pet pet = new Pet();
				
				pet.setPetID(rs.getString("petID"));
				pet.setPetName(rs.getString("petName"));
				pet.setPetDOB(rs.getString("petBirthDate"));
				pet.setAnimalType(rs.getString("animalType"));
				pet.setBreed(rs.getString("breed"));
				pet.setPetGender(rs.getString("petGender"));
				pet.setPetHeight(rs.getDouble("petHeight"));
				pet.setPetLength(rs.getDouble("petLength"));
				pet.setPetWeight(rs.getDouble("petWeight"));
				pet.setCustomer(cdao.getCustomerById(rs.getString("custIC")));
				
				list.add(pet);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
