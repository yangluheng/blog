package com.datou.dao;

import com.datou.model.ArticleDetail;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-context.xml")
public class ArticleDetailMapperTest {
    @Autowired
    private ArticleDetailMapper articleDetailMapper;

    @Test
    public void add() {
        ArticleDetail articleDetail=new ArticleDetail();
        articleDetail.setContent("22222");
        articleDetailMapper.add(articleDetail);
        System.out.println(articleDetail.getId());
    }

    @Test
    public void delByIdTest() {
        articleDetailMapper.delById(1);
    }

    @Test
    public void getByIdTest() {
        System.out.println( articleDetailMapper.getById(11));
    }

    @Test
    public void updateByIdTest() {
       ArticleDetail articleDetail=new ArticleDetail();
       articleDetail.setContent("bbb");
       articleDetail.setId(2);
       articleDetailMapper.updateById(articleDetail);


    }
}