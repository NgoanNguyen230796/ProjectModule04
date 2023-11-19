package com.ra.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CategoryUpdate")
public class CategoryUpdate {
    @Id
    @Column(name = "category_id")
    private int categoryId;
    @Column(name = "category_name", unique = true,length = 150)
    private String categoryName;
    @Column(columnDefinition = "TEXT", name = "category_description")
    private String categoryDescription;
    @Column(columnDefinition = "boolean default true",name = "category_status")
    private boolean categoryStatus;

    public CategoryUpdate() {
    }

    public CategoryUpdate(int categoryId, String categoryName, String categoryDescription, boolean categoryStatus) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.categoryDescription = categoryDescription;
        this.categoryStatus = categoryStatus;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public boolean isCategoryStatus() {
        return categoryStatus;
    }

    public void setCategoryStatus(boolean categoryStatus) {
        this.categoryStatus = categoryStatus;
    }
}
