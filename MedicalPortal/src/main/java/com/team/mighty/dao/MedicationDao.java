package com.team.mighty.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.team.mighty.domain.Medication;

public interface MedicationDao extends JpaRepository<Medication, Serializable>{

	@Query("From Medication")
	List<Medication> getMedicationInfo() throws Exception;

}
