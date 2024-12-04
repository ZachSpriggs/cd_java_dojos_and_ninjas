package com.zach.dojosandninjas.services;

import java.util.*;
import org.springframework.stereotype.Service;
import com.zach.dojosandninjas.repository.DojoRepository;
import com.zach.dojosandninjas.repository.NinjaRepository;
import com.zach.dojosandninjas.models.*;

@Service
public class DojoService {

	private final DojoRepository dojoRepo;
	private final NinjaRepository ninjaRepo;
	
	public DojoService(DojoRepository dojoRepo, NinjaRepository ninjaRepo) {
		this.dojoRepo = dojoRepo;
		this.ninjaRepo = ninjaRepo;
	}
	
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	
	
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		if(optionalNinja.isPresent()) {
			return optionalNinja.get();
		} else {
			return null;
		}
	}
	
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	
	
}
