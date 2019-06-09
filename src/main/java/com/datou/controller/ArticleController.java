package com.datou.controller;

import com.datou.model.*;
import com.datou.service.*;
import com.datou.tool.SetUtil;
import com.datou.tool.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.datou.tool.utils;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
@RequestMapping("article")
public class ArticleController {
    @Autowired
    ICategoryService categoryService;
    @Autowired
    ITagService tagService;
    @Autowired
    IArticleService articleService;
    @Autowired
    IArticleDetailService articleDetailService;

    @Autowired
    IUserService userService;

    @RequestMapping("write/page")
    public String writePage(Model model) {
//        加载所以类目
        List<Category> categoryList = categoryService.categoryList();
        List<Tag> tagList = tagService.tagList();
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("tagList", tagList);
        model.addAttribute("date", utils.GetNowDate());
        return "admin/writeArticle";
    }

    @RequestMapping("list")
    public String articleList(Model model, Article article, @RequestParam(value = "isTop_flag", required = false) boolean isTop) {
        article.setIsTop(isTop ? 1 : 0);
        System.out.println(article);
        List<HashMap<String, Object>> hashMap = articleService.articleList(article);
        for (HashMap<String, Object> res : hashMap) {
            HashMap<String, Object> ar = articleService.getById(Integer.parseInt(res.get("id").toString()));
            if (ar.get("tag_id") != null) {

                String[] tagsID = ar.get("tag_id").toString().split(",");
                int[] b = new int[tagsID.length];
                for (int i = 0; i <= tagsID.length - 1; i++) {
                    b[i] = Integer.parseInt(tagsID[i]);
                }
                TagCustomer tag = new TagCustomer();
                tag.setArticleTags(b);
                List<HashMap<String, Object>> tagList = tagService.getTagNameAllById(tag);
                res.put("tagList", tagList);
            }

        }

        List<Tag> tagList = tagService.tagList();
        List<Category> categoryList = categoryService.categoryList();
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("tagList", tagList);
        model.addAttribute("articleList", hashMap);
        model.addAttribute("article", article);
        return "admin/articleList";
    }

    @RequestMapping("dashBoard")
    public String articleDashBoard(Model model) {
        Integer article = articleService.getArticleCount();
        Integer category = categoryService.getCategoryCount();
        Integer user = userService.getUserCount();
        Integer tag = tagService.getTagCount();

        model.addAttribute("article", article);
        model.addAttribute("tag", tag);
        model.addAttribute("userCount", user);
        model.addAttribute("category", category);
        return "admin/dashBoard";
    }

    @RequestMapping("write/save")
    public String articleSave(@RequestParam(value = "isTop_flag", required = false) boolean isTop,
                              @RequestParam(value = "isComment_flag", required = false) boolean isComment,
                              @RequestParam("updateTime_s") String updateTime,
                              Article article, ArticleDetail articleDetail, String contenthtml) {
        if (article.getTags() != null) {
            String[] articleTag = article.getTags().split(",");
            updateTag(articleTag, 0);
        }
        articleDetailService.add(articleDetail);
        article.setArticleId(articleDetail.getId());
        article.setIsTop(isTop ? 1 : 0);
        article.setIsComment(isComment ? 1 : 0);
        article.setCategoryId(article.getCategoryId() == null ? 0 : article.getCategoryId());
        article.setUpdateTime(utils.strToDateLong(updateTime));
        articleService.add(article);
        System.out.println(111);
        //articleService.add(article);
        return "redirect:/article/list";
    }


    @RequestMapping("del/{id}")
    public String delById(@PathVariable Integer id) {
        tagService.delTagCountByArticle(id);
        articleService.delById(id);
        return "redirect:/article/list";
    }

    @RequestMapping("edit/{id}")
    public String editById(Model model, @PathVariable Integer id) {
        List<Category> categoryList = categoryService.categoryList();
        HashMap<String, Object> hashMap = articleService.getById(id);
        HashMap<String, Object> articleDetail = articleDetailService.getById(Integer.parseInt(hashMap.get("article__detail_id").toString()));
        List<Tag> tagList = tagService.tagList();
        if (hashMap.get("tag_id") != null) {
            String[] articleTag = hashMap.get("tag_id").toString().split(",");
            model.addAttribute("articleTagList", articleTag);
        }
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("tagList", tagList);
        model.addAttribute("date", utils.GetNowDate());
        model.addAttribute("article", hashMap);
        model.addAttribute("articleDetail", articleDetail);


        return "admin/articleEdit";
    }


    @RequestMapping("edit/save/{id}")
    public String articleEdit(@RequestParam(value = "isTop_flag", required = false) boolean isTop,
                              @RequestParam(value = "isComment_flag", required = false) boolean isComment,
                              @RequestParam("updateTime_s") String updateTime,
                              @RequestParam("startTag") String startTag,
                              @PathVariable Integer id,
                              Article article, ArticleDetail articleDetail, String contenthtml) {

        String[] startTagArry = StringUtil.replaceBlank(startTag).split(",");
        if (startTag != "" && article.getTags() != null) {

            String[] oldTagArry = article.getTags().split(",");


            Set<String> startTagSet = new HashSet(Arrays.asList(startTagArry));
            Set<String> oldTagSet = new HashSet(Arrays.asList(oldTagArry));

            SetUtil<String> ds = new SetUtil<String>();
//            标签少一个
            Set<String> differentSetSub = ds.differentSet(startTagSet, oldTagSet);
//            标签加一个
            Set<String> differentSet = ds.differentSet(oldTagSet, startTagSet);
            if (differentSetSub.size() > 0) {
                String[] articleTag = new String[differentSetSub.size()];
                int i = 0;
                for (String str : differentSetSub) {
                    articleTag[i] = str;
                    i++;
                }
                updateTag(articleTag, 1);

            } else if (differentSet.size() > 0) {
                String[] articleTag = new String[differentSet.size()];
                int i = 0;
                for (String str : differentSet) {
                    articleTag[i] = str;
                    i++;
                }
                updateTag(articleTag, 0);
            }

        } else if (startTag == "" && article.getTags() != null) {
            String[] articleTag = article.getTags().split(",");
            updateTag(articleTag, 0);
        } else if (article.getTags() == null && startTag != "") {
            String[] startTagArry_ = StringUtil.replaceBlank(startTag).split(",");
            updateTag(startTagArry_, 1);
        }


        articleDetail.setId(article.getArticleId());
        articleDetailService.updateById(articleDetail);
        article.setIsTop(isTop ? 1 : 0);
        article.setIsComment(isComment ? 1 : 0);
        article.setUpdateTime(utils.strToDateLong(updateTime));
        article.setId(id);
        articleService.updateById(article);
        return "redirect:/article/list";
    }

    public void updateTag(String[] articleTag, int operation) {
        int[] b = new int[articleTag.length];
        for (int i = 0; i <= articleTag.length - 1; i++) {
            b[i] = Integer.parseInt(articleTag[i]);
        }
        TagCustomer tag = new TagCustomer();
        tag.setArticleCount(1);
        tag.setArticleTags(b);
//        operation 0标签文章数量加1，其他标签文章数量减1
        if (operation == 0) {
            tagService.updateCountById(tag);
        } else {
            tagService.updateCountSubById(tag);
        }

    }

    @RequestMapping("detail")
    public  String articledetail(){
        return "front/detail";
    }

    @RequestMapping("nav")
    public String articleNav() {
        return "front/nav";
    }

    @RequestMapping("source")
    public String articleSource() {
        return "front/source";
    }
}



