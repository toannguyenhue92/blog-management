package toan.blog2.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import toan.blog2.model.Category;
import toan.blog2.repository.CategoryRepository;
import toan.blog2.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Iterable<Category> findAllCategoriesAvailable() {
        return categoryRepository.findAllByStatusIsTrue();
    }

    @Override
    public Category findById(Integer id) {
        return categoryRepository.findById(id).orElse(null);
    }
}
