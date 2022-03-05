package com.vlx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vlx.entity.Amount;
@Repository
public interface PriceRepository extends JpaRepository<Amount, Long>{

	Amount findByType(String type); 
}
