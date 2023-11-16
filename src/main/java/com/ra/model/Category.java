package com.ra.model;

import jakarta.validation.constraints.NotBlank;

import javax.persistence.*;

import java.util.List;

@Entity
//@JsonBackReference
@Table(name = "Category")
public class Category {
    @Id
    @Column(name = "category_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryId;

    //nếu categoryName là null hoặc là một chuỗi trống hoặc chỉ chứa các khoảng trắng,
    // thì việc xác thực sẽ không thành công và một lỗi tương thích thông báo sẽ được sinh ra.
    @NotBlank(message = "Không được để trống")
    @Column(name = "category_name", unique = true,length = 150)
    private String categoryName;

    //Chỉ rằng thuộc tính categoryDescription là đối tượng lớn
    @Lob
//    @Null
    @Column(columnDefinition = "TEXT", name = "category_description")
    private String categoryDescription;

    @Column(columnDefinition = "boolean default true",name = "category_status")
    private boolean categoryStatus;

    @OneToMany(mappedBy = "category",fetch = FetchType.LAZY)
    private List<Product> listProduct;

    public Category() {
    }

    public Category(int categoryId, String categoryName, String categoryDescription, boolean categoryStatus, List<Product> listProduct) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.categoryDescription = categoryDescription;
        this.categoryStatus = categoryStatus;
        this.listProduct = listProduct;
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

    public List<Product> getListProduct() {
        return listProduct;
    }

    public void setListProduct(List<Product> listProduct) {
        this.listProduct = listProduct;
    }
}
