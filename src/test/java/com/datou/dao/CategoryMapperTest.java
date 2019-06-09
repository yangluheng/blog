package com.datou.dao;

import com.datou.model.Category;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-context.xml")
public class CategoryMapperTest {
    @Autowired
    private CategoryMapper categoryMapper;

    @Test
    public void add() {
        Category category = new Category();
        category.setName("我");
        categoryMapper.add(category);
    }

    @Test
    public void categoryListTest() {
        System.out.println(categoryMapper.categoryList());
    }

    @Test
    public void delByIdTest() {
        categoryMapper.delById(10);
    }

    @Test
    public void editByIdTest() {
        System.out.println(categoryMapper.editById(11));
    }

    @Test
    public void updateByIdTest() {
        Category category = new Category();
        category.setName("ggg");
        category.setId(15);
        categoryMapper.updateById(category);
    }
}