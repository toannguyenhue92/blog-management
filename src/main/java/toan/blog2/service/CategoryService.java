package toan.blog2.service;

import toan.blog2.model.Category;

public interface CategoryService {

  Iterable<Category> findAllCategoriesAvailable();

  Category findById(Integer categoryId);
    
}