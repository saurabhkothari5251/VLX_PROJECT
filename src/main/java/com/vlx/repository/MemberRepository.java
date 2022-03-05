package com.vlx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vlx.entity.Member;

@Repository
public interface MemberRepository extends JpaRepository<Member, Long>{

	boolean existsByUserId(Long uid);
	
	Member findByUserId(Long uid); 
		
	
	
	
}
