package com.vlx.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.vlx.entity.Amount;
import com.vlx.repository.PriceRepository;

@Service
public class PriceService {

	@Autowired
	PriceRepository pricerepo;
	
	public Amount showPrice(String memberShipType) {
		
		return pricerepo.findByType(memberShipType);
	}

	
}
