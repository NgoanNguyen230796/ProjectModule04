package com.ra.service;

import com.ra.model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> displayData(String categoryNameSearch, int page, int size, String direction, String sortBy);
    int getListPage(String categoryName);
    Category findById(int categoryId);

    boolean saveOrUpdate(Category category);

    boolean delete(int categoryId);

}
