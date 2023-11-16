package com.ra.model;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;

import javax.persistence.*;
import java.util.List;


@Entity

@Table(name = "Product")
public class Product {

    @Id
    @Column(name = "product_id", length = 5)
    private String productId;

    @Column(name = "product_name", unique = true, length = 150)
    private String productName;

    //nếu price là null hoặc là một chuỗi trống hoặc chỉ chứa các khoảng trắng,
    // thì việc xác thực sẽ không thành công và một lỗi tương thích thông báo sẽ được sinh ra.
    @NotBlank
    @Positive
    @Column(name = "price")
    private float price;

    @Lob
    @Column(columnDefinition = "TEXT", name = "tittle")
    private String tittle;

    @Lob
    @Column(columnDefinition = "TEXT", name = "product_description")
    private String productDescription;

    //nếu productImage là null hoặc là một chuỗi trống hoặc chỉ chứa các khoảng trắng,
    // thì việc xác thực sẽ không thành công và một lỗi tương thích thông báo sẽ được sinh ra.
    @NotBlank
    @Lob
    @Column(columnDefinition = "TEXT", name = "product_image")
    private String image;


    @Column(name = "product_unit")
    private int productUnit;

    @Column(name = "product_status")
    private boolean productStatus;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id", referencedColumnName = "category_id")

    private Category category;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
//    @JsonBackReference
    private List<ImageProduct> listImageProduct;

    public Product() {
    }

    public Product(String productId, String productName, float price, String tittle, String productDescription, String image, int productUnit, boolean productStatus, Category category, List<ImageProduct> listImageProduct) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.tittle = tittle;
        this.productDescription = productDescription;
        this.image = image;
        this.productUnit = productUnit;
        this.productStatus = productStatus;
        this.category = category;
        this.listImageProduct = listImageProduct;
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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<ImageProduct> getListImageProduct() {
        return listImageProduct;
    }

    public void setListImageProduct(List<ImageProduct> listImageProduct) {
        this.listImageProduct = listImageProduct;
    }
}
