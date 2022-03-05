package com.vlx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vlx.entity.User;

public interface UserRepository extends JpaRepository<User, Long>{
	 User findByUsername(String username);
	 User findById(long i);
	 @Query(value = "SELECT role FROM role where id =( SELECT role_id from user_role where user_id =?)", nativeQuery = true)
	String findUserRole(Long id);
}
