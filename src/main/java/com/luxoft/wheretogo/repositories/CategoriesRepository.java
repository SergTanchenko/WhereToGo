package com.luxoft.wheretogo.repositories;

import java.util.List;

import com.luxoft.wheretogo.models.Category;

public interface CategoriesRepository {

	void add(Category category);

	List<Category> findAll();

	Category findById(int categoryId);

}