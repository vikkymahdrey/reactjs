package com.team.mighty.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.team.mighty.domain.Allergy;

public interface AllergiesDao extends JpaRepository<Allergy, Serializable> {
	
	@Query("From Allergy")
	List<Allergy> getAllergiesInfo()throws Exception;

}
