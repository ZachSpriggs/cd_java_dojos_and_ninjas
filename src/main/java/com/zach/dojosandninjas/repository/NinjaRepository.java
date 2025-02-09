package com.zach.dojosandninjas.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.zach.dojosandninjas.models.Ninja;

@Repository 
public interface NinjaRepository extends CrudRepository<Ninja, Long>{
	List<Ninja> findAll();
	
	List<Ninja> findByDojoNameContaining(String search);
	
}
