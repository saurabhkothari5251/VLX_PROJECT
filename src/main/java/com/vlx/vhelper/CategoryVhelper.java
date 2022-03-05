package com.vlx.vhelper;


import com.vlx.entity.Category;
import com.vlx.vo.CategoryVo;

public class CategoryVhelper {
	private static CategoryVhelper categoryVhelper;

	public static CategoryVhelper getInstance() {
		if (categoryVhelper == null) {
			categoryVhelper = new CategoryVhelper();
		}
		return categoryVhelper;
	}

	public Category parseCategoryVOtocategoryEntity(CategoryVo vo) {
		Category category = new Category();

		category.setId(vo.getId());
		category.setCategoryname(vo.getCategoryname());
		return category;
	}

	public CategoryVo parseCategorytoCategoryVO(Category category) {
		CategoryVo vo = new CategoryVo();

		vo.setId(category.getId());
		vo.setCategoryname(category.getCategoryname());

		return vo;

	}
}
