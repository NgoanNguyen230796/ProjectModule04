package com.ra.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ProductUpdate")
public class ProductUpdate {
    @Id
    @Column(name = "product_id", length = 5)
    private String productId;
    @Column(name = "product_name", unique = true, length = 150)
    private String productName;

    @Column(name = "price")
    private float price;

    @Column(columnDefinition = "TEXT", name = "tittle")
    private String tittle;

    @Column(columnDefinition = "TEXT", name = "product_description")
    private String productDescription;

    @Column(columnDefinition = "TEXT", name = "product_image")
    private String image;

    @Column(name = "product_unit")
    private int productUnit;

    @Column(name = "product_status")
    private boolean productStatus;

    @Column(name = "category_id")
    private int categoryId;

    @Column(name = "category_name", unique = true,length = 150)
    private String categoryName;

    @Column(name = "product_image_name")
    private boolean productImageName;
    public ProductUpdate() {
    }

    public ProductUpdate(String productId, String productName, float price, String tittle, String productDescription, String image, int productUnit, boolean productStatus, int categoryId, String categoryName, boolean productImageName) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.tittle = tittle;
        this.productDescription = productDescription;
        this.image = image;
        this.productUnit = productUnit;
        this.productStatus = productStatus;
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.productImageName = productImageName;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getProductUnit() {
        return productUnit;
    }

    public void setProductUnit(int productUnit) {
        this.productUnit = productUnit;
    }

    public boolean isProductStatus() {
        return productStatus;
    }

    public void setProductStatus(boolean productStatus) {
        this.productStatus = productStatus;
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

    public boolean isProductImageName() {
        return productImageName;
    }

    public void setProductImageName(boolean productImageName) {
        this.productImageName = productImageName;
    }
}
