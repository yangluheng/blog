package com.datou.dao;


import com.datou.model.ArticleDetail;

import java.util.HashMap;

public interface ArticleDetailMapper {
    void add(ArticleDetail articleDetail);

    void delById(Integer id);

    HashMap<String,Object> getById(Integer id);

    void updateById(ArticleDetail articleDetail);
}
