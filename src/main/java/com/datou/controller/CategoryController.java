package com.datou.controller;

import com.datou.model.Category;
import com.datou.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("category")
public class CategoryController {
    @Autowired
    private ICategoryService categoryService;

    @RequestMapping("add")
    public String add(Model model) {
        List<Category> categoryList = categoryService.categoryList();
        model.addAttribute("categoryList", categoryList);
        return "admin/addCategory";
    }

    @RequestMapping("list")
    public String tagList(Model model) {
        List<Category> categories = categoryService.categoryList();
        model.addAttribute("categorys", categories);
        return "admin/categoryList";
    }

    @RequestMapping("add/save")
    public String addSave(HttpServletRequest request, Category category, Integer isEdit) {
        if (category.getOrders() == null) {
            category.setOrders(0);
        }
        if (isEdit == 0) {

            categoryService.add(category);
        } else {
            category.setId(isEdit);
            categoryService.updateById(category);
        }

        return "redirect:/category/list";


    }

    @RequestMapping("del/{id}")
    public String delById(HttpServletRequest request, @PathVariable("id") Integer id) {

        categoryService.delById(id);
        return "redirect:/category/list";


    }

    @RequestMapping("edit/{id}")
    public String editById(Model model, @PathVariable("id") Integer id) {

        Category category = categoryService.editById(id);
        model.addAttribute("categoryById", category);

        List<Category> categoryList = categoryService.categoryList();
        model.addAttribute("categoryList", categoryList);
        return "admin/addCategory";


    }


}
