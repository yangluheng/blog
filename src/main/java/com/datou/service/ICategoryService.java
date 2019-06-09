package com.datou.service;

import com.datou.model.Category;

import java.util.List;

public interface ICategoryService {
    void add(Category category);

    List<Category> categoryList();

    void delById(Integer id);

    Category editById(Integer id);

    void updateById(Category category);

    Integer getCategoryCount();
}
