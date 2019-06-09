package com.datou.controller;

import com.datou.model.Tag;
import com.datou.service.ITagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("tag")
public class TagController {
    @Autowired
    private ITagService tagService;

    @RequestMapping("add/page")
    public String add() {
        return "admin/addTag";
    }

    @RequestMapping("list")
    public String tagList(Model model) {
        List<Tag> tagList = tagService.tagList();
        model.addAttribute("tags", tagList);
        return "admin/tagList";
    }


    @RequestMapping("add/save")
    public String addSave(Tag tag, Integer isEdit) {
        tag.setArticleCount(0);
        if (isEdit == 0) {
            tagService.add(tag);
        } else {
            tag.setId(isEdit);
            tagService.updateById(tag);
        }


        return "redirect:/tag/list";
    }

    @RequestMapping("edit/{id}")
    public String editById(Model model, @PathVariable("id") Integer id) {
        Tag tag = tagService.editById(id);
        model.addAttribute("tag", tag);
        return "admin/addTag";
    }

    @RequestMapping("del/{id}")
    public String delById(HttpServletRequest request, @PathVariable("id") Integer id) {

        tagService.delById(id);
        return "redirect:/tag/list";


    }
}
