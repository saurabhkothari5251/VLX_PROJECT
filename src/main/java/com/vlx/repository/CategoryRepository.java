package com.vlx.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.vlx.entity.Category;

@RepositoryRestResource(collectionResourceRel="category",path="category")
public interface CategoryRepository extends JpaRepository<Category, Long> {

}
