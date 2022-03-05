package com.vlx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vlx.entity.Roles;

@Repository
public interface RoleRepository  extends JpaRepository<Roles, Long> {

	Roles findByRole(String role);

}