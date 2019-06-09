package com.datou.model;

public class Category {
    private Integer id;
    private String name;
    private Integer parentID;
    private Integer articleCount;
    private Integer orders;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getParentID() {
        return parentID;
    }

    public void setParentID(Integer parentID) {
        this.parentID = parentID;
    }

    public Integer getArticleCount() {
        return articleCount;
    }

    public void setArticleCount(Integer articleCount) {
        this.articleCount = articleCount;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public Category() {
    }

    public Category(String name, Integer parentID, Integer orders) {
        this.name = name;
        this.parentID = parentID;
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", parentID=" + parentID +
                ", articleCount=" + articleCount +
                ", orders=" + orders +
                '}';
    }
}
