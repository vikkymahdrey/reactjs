package com.team.mighty.service;

import java.util.List;

import com.team.mighty.domain.AdminUser;
import com.team.mighty.domain.Allergy;
import com.team.mighty.domain.Medication;

/**
 * 
 * @author Shankara
 *
 */
public interface ConsumerInstrumentService {
	
	public List<Allergy> getAllergiesInfo() throws Exception;

	public List<Medication> getMedicationInfo()throws Exception;

	public AdminUser userLogin(String uname, String pass)throws Exception;
	
	

}
