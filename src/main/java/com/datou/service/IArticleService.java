package com.datou.service;

import com.datou.model.Article;

import java.util.HashMap;
import java.util.List;

public interface IArticleService {
    void add(Article article);

    List< HashMap<String,Object>> articleList(Article article);

    void delById(Integer id);

    HashMap<String,Object> getById(Integer id);

    void updateById(Article article);

    Integer getArticleCount();

}
