package toan.blog2.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import toan.blog2.model.Blog;

public interface BlogService {
    Page<Blog> findAllBlogAvailable(Pageable pageable);

    void save(Blog blog);

    Blog findById(Integer id);
}
