package com.datou.service.impl;

import com.datou.dao.ArticleDetailMapper;
import com.datou.model.ArticleDetail;
import com.datou.service.IArticleDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service("articleDetailService")
public class ArticleDetailServiceImpl implements IArticleDetailService {
    @Autowired
    private ArticleDetailMapper articleDetailMapper;

    @Override
    public void add(ArticleDetail articleDetail) {
        articleDetailMapper.add(articleDetail);
    }

    @Override
    public void delById(Integer id) {
        articleDetailMapper.delById(id);
    }

    @Override
    public HashMap<String, Object> getById(Integer id) {
        return articleDetailMapper.getById(id);
    }

    @Override
    public void updateById(ArticleDetail articleDetail) {
        articleDetailMapper.updateById(articleDetail);
    }
}
