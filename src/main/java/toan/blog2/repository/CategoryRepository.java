package toan.blog2.repository;

import org.springframework.data.repository.CrudRepository;
import toan.blog2.model.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {
    Iterable<Category> findAllByStatusIsTrue();
}
