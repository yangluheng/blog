package com.datou.service;

import com.datou.model.Tag;
import com.datou.model.TagCustomer;

import java.util.HashMap;
import java.util.List;

public interface ITagService {
    void add(Tag tag);

    List<Tag> tagList();

    void delById(Integer id);

    Tag editById(Integer id);

    void updateById(Tag tag);

    void updateCountById(TagCustomer tag);

    void updateCountSubById(TagCustomer tag);

    List<HashMap<String, Object>> getTagNameAllById(TagCustomer tag);

    void delTagCountByArticle(Integer id);

    Integer getTagCount();

}
