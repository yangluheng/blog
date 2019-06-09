package com.datou.dao;

import com.datou.model.Tag;
import com.datou.model.TagCustomer;
import com.datou.service.ITagService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-context.xml")
public class TagMapperTest {

    @Autowired
    private TagMapper tagMapper;

    @Autowired
    ITagService tagService;

    @Test
    public void addTest() {
        tagMapper.add(new Tag("Spring"));
    }

    @Test
    public void tagListTest() {
        List<Tag> tagList = tagMapper.tagList();
        System.out.println(tagList);
    }

    @Test
    public void delByIdTest() {
        tagMapper.delById(3);

    }

    @Test
    public void editByIdTest() {
        System.out.println(tagMapper.editById(2));

    }

    @Test
    public void updateByIdTest() {
        Tag tag = new Tag();
        tag.setName("ggg");
        tag.setId(2);
        tag.setArticleCount(0);
        tagMapper.updateById(tag);
    }

    @Test
    public void updateCountByIdTest() {
        TagCustomer tag = new TagCustomer();
        int[] a = {6, 7};
        tag.setArticleCount(1);
        tag.setArticleTags(a);
        tagMapper.updateCountById(tag);
    }

    @Test
    public void updateCountSubByIdTest() {
        TagCustomer tag = new TagCustomer();
        int[] a = {7};
        tag.setArticleCount(1);
        tag.setArticleTags(a);
        tagMapper.updateCountSubById(tag);
    }

    @Test
    public void getTagNameAllByIdTest() {
        TagCustomer tag = new TagCustomer();
        int[] a = {11,12,13};
        tag.setArticleTags(a);
        System.out.println(tagMapper.getTagNameAllById(tag));
    }

    @Test
    public void delTagCountByArticleTest() {
        Integer id=58;
       tagService.delTagCountByArticle(id);
    }


}