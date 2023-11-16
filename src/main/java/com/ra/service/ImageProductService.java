package com.ra.service;

import com.ra.model.ImageProduct;

public interface ImageProductService {
    boolean save(ImageProduct images);

    boolean delete(String productId);
}
