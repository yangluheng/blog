package com.datou.service.impl;

import com.datou.dao.ArticleMapper;
import com.datou.model.Article;
import com.datou.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("articleService")
public class ArticleServiceImpl implements IArticleService {
    @Autowired
    ArticleMapper articleMapper;

    @Override
    public void add(Article article) {

        articleMapper.add(article);
    }

    @Override
    public List<HashMap<String, Object>> articleList(Article article) {
        return articleMapper.articleList(article);
    }

    @Override
    public void delById(Integer id) {
        articleMapper.delById(id);
    }

    @Override
    public HashMap<String, Object> getById(Integer id) {
        return articleMapper.getById(id);
    }

    @Override
    public void updateById(Article article) {
        articleMapper.updateById(article);
    }

    @Override
    public Integer getArticleCount() {
        return articleMapper.getArticleCount();
    }
}
