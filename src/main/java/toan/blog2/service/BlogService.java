package toan.blog2.service;

import toan.blog2.model.Blog;

public interface BlogService {
    Iterable<Blog> findAll();

    void save(Blog blog);

    Blog findById(Integer id);
}
