package com.team.mighty.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.mighty.dao.AllergiesDao;
import com.team.mighty.dao.MedicationDao;
import com.team.mighty.dao.UserLoginDao;
import com.team.mighty.domain.AdminUser;
import com.team.mighty.domain.Allergy;
import com.team.mighty.domain.Medication;
import com.team.mighty.logger.MightyLogger;
import com.team.mighty.service.ConsumerInstrumentService;

/**
 * 
 * @author Shankara
 *
 */
@Service("consumerInstrumentServiceImpl")
public class ConsumerInstrumentServiceImpl implements ConsumerInstrumentService {

	private final MightyLogger logger = MightyLogger.getLogger(ConsumerInstrumentServiceImpl.class);
	
	
	@Autowired
	private AllergiesDao allergiesDao;
	
	@Autowired
	private MedicationDao medicationDao;
	
	@Autowired
	private UserLoginDao userLoginDao;
	
		
	
	public List<Allergy> getAllergiesInfo() throws Exception {
		return allergiesDao.getAllergiesInfo();
	}

	
	public List<Medication> getMedicationInfo() throws Exception {
		return medicationDao.getMedicationInfo();
		
	}


	public AdminUser userLogin(String loginId, String password) throws Exception {
		return userLoginDao.getUserLogin(loginId, password);
	}

	
}