package com.datou.model;



public class TagCustomer extends Tag {
   private int[] articleTags;

    public int[] getArticleTags() {
        return articleTags;
    }

    public void setArticleTags(int[] articleTags) {
        this.articleTags = articleTags;
    }
}
