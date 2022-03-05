package com.vlx.repository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;


import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import com.vlx.entity.Ad;
import com.vlx.entity.Category;
import com.vlx.entity.User;

@RepositoryRestResource(collectionResourceRel="ad",path="ad")
public interface AdRepository extends JpaRepository<Ad, Long> {
	@RestResource(path = "categoryid")
	Page<Ad> findByCategoryId(@Param("id") Long id, Pageable pageable);
	
	List<Ad> findAllByCategory(Optional<Category> category1);
	
	List<Ad> findByNameContaining(String name);

	List<Ad> findByLocationContaining(String name);
	List<Ad> findAllByUser(User user);
	@Query(value = "select count(*) from Ad where user_id=?", nativeQuery = true)
	int countUser(Long id);
}
