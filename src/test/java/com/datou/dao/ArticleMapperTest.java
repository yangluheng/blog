package com.datou.dao;

import com.datou.model.Article;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.datou.tool.utils;

import java.util.HashMap;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-context.xml")
public class ArticleMapperTest {
    @Autowired
    ArticleMapper articleMapper;

    @Test
    public void addTest() {
        Article article = new Article();
        article.setTitle("test");
        article.setArticleId(1);
        article.setCategoryId(1);
        article.setUpdateTime(utils.strToDateLong(utils.GetNowDate()));
        article.setDescription("test");
        article.setIsTop(0);
        article.setIsComment(0);
        article.setStatus(0);
        article.setTags("1,2,3");
        article.setUserId(1);
        articleMapper.add(article);


    }

    @Test
    public void articleListTest() {
        Article a=new Article();
        a.setCategoryId(37);
        a.setIsTop(1);
        a.setStatus(0);
        a.setSearch("数据类型");
        a.setTagId(1);
        List<HashMap<String, Object>> hashMap = articleMapper.articleList(a);
        System.out.println(hashMap);
    }

    @Test
    public void delByIdTest() {
        articleMapper.delById(9);
    }

    @Test
    public void getByIdTest() {
        System.out.println(articleMapper.getById(36));

    } @Test
    public void getArticleCountTest() {
        System.out.println(articleMapper.getArticleCount());

    }

    @Test
    public void updateByIdTest() {
        Article article=new Article();
        article.setTitle("111");
        article.setUpdateTime(utils.strToDateLong(utils.GetNowDate()));
        article.setIsComment(0);
        article.setIsTop(0);
        article.setTags("6,8,9");
        article.setStatus(0);
        article.setCategoryId(26);
        article.setDescription("22222");
        article.setId(8);
        articleMapper.updateById(article);

    }
}