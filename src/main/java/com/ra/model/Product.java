package com.ra.model;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;

import javax.persistence.*;


@Entity
@Table(name="Product")
public class Product {

    @Id
    @Column(name="product_id",length = 5)
    private String productId;

    @Column(name="product_name",unique = true,length = 150)
    private String productName;

    //nếu price là null hoặc là một chuỗi trống hoặc chỉ chứa các khoảng trắng,
    // thì việc xác thực sẽ không thành công và một lỗi tương thích thông báo sẽ được sinh ra.
    @NotBlank
    @Positive
    @Column(name="price")
    private float price;

    @Lob
    @Column(columnDefinition = "TEXT",name = "tittle")
    private String tittle;

    @Lob
    @Column(columnDefinition = "TEXT",name = "product_description")
    private String productDescription;

    //nếu productImage là null hoặc là một chuỗi trống hoặc chỉ chứa các khoảng trắng,
    // thì việc xác thực sẽ không thành công và một lỗi tương thích thông báo sẽ được sinh ra.
    @NotBlank
    @Lob
    @Column(columnDefinition = "TEXT",name = "product_image")
    private String productImage;


    @Column(name="product_unit",length = 10)
    private String productUnit;

    @Column(name = "product_status")
    private boolean productStatus;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="category_id",referencedColumnName ="category_id")
    private Category category;


    public Product() {
    }

    public Product(String productId, String productName, float price, String tittle, String productDescription, String productImage, String productUnit, boolean productStatus, Category category) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.tittle = tittle;
        this.productDescription = productDescription;
        this.productImage = productImage;
        this.productUnit = productUnit;
        this.productStatus = productStatus;
        this.category = category;
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

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductUnit() {
        return productUnit;
    }

    public void setProductUnit(String productUnit) {
        this.productUnit = productUnit;
    }

    public boolean isProductStatus() {
        return productStatus;
    }

    public void setProductStatus(boolean productStatus) {
        this.productStatus = productStatus;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
