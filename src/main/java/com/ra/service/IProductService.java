package com.ra.service;

import com.ra.model.Account;
import com.ra.model.Category;
import com.ra.model.Product;

import java.util.List;

public interface IProductService {
    //Hiển thị dữ liệu sắp xếp dữ liệu và phân trang
    List<Product> displayData(String productNameAndTittleSearch, int page, int size, String direction, String sortBy);
    int getListPage(String productSearch);
    Product findByProductId(String productId);

    Product save(Product product);
    boolean update(Product product);

    boolean delete(Product product);

    List<Product> getAllData();
    List<Product> getAllDataByProductStatusIsTrue();
    
}
