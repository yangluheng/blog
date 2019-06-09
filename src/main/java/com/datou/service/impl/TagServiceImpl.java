package com.datou.service.impl;

import com.datou.dao.TagMapper;
import com.datou.model.Tag;
import com.datou.model.TagCustomer;
import com.datou.service.ITagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("tagService")
public class TagServiceImpl implements ITagService {
    @Autowired
    private TagMapper tagMapper;

    @Override
    public void add(Tag tag) {
        tagMapper.add(tag);
    }

    @Override
    public List<Tag> tagList() {
        return tagMapper.tagList();
    }

    @Override
    public void delById(Integer id) {
        tagMapper.delById(id);
    }

    @Override
    public Tag editById(Integer id) {
        return tagMapper.editById(id);
    }

    @Override
    public void updateById(Tag tag) {
        tagMapper.updateById(tag);
    }

    @Override
    public void updateCountById(TagCustomer tag) {
        tagMapper.updateCountById(tag);
    }

    @Override
    public void updateCountSubById(TagCustomer tag) {
        tagMapper.updateCountSubById(tag);
    }

    @Override
    public List<HashMap<String, Object>> getTagNameAllById(TagCustomer tag) {
        return tagMapper.getTagNameAllById(tag);
    }

    @Override
    public void delTagCountByArticle(Integer id) {
        tagMapper.delTagCountByArticle(id);
    }

    @Override
    public Integer getTagCount() {
        return tagMapper.getTagCount();
    }
}
