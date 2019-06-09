package com.datou.service.impl;

import com.datou.dao.CategoryMapper;
import com.datou.model.Category;
import com.datou.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("categoryService")
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public void add(Category category) {
        categoryMapper.add(category);
    }

    @Override
    public List<Category> categoryList() {
        return categoryMapper.categoryList();
    }

    @Override
    public void delById(Integer id) {
        categoryMapper.delById(id);
    }

    @Override
    public Category editById(Integer id) {
        return categoryMapper.editById(id);
    }

    @Override
    public void updateById(Category category) {
        categoryMapper.updateById(category);
    }

    @Override
    public Integer getCategoryCount() {
        return categoryMapper.getCategoryCount();
    }
}
