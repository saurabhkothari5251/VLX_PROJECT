package com.vlx.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vlx.entity.Category;
import com.vlx.service.CategoryService;
import com.vlx.vhelper.CategoryVhelper;
import com.vlx.vo.CategoryVo;

@RestController
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/category")
	public List<Category> getAllCategories()
	{
		return categoryService.getAllCategories();
	}
	
	@RequestMapping("/category/{id}")
	public Optional<Category>  getCategory(@PathVariable Long id) {
		return categoryService.getCategory(id);
	}
	
	
	@PostMapping(value="/category")
	public void addCategory(@RequestBody CategoryVo categoryVo) {
		Category category = CategoryVhelper.getInstance().parseCategoryVOtocategoryEntity(categoryVo);
		categoryService.addCategory(category);
	}
	

	
	
}
