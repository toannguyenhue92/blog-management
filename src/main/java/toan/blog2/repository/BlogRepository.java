package toan.blog2.repository;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import toan.blog2.model.Blog;

public interface BlogRepository
        extends PagingAndSortingRepository<Blog, Integer> {
    Page<Blog> findAllByStatusIsTrue(Pageable pageable);
}
