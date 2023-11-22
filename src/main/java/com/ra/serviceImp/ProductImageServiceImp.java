package com.ra.serviceImp;

import com.ra.model.ImageProduct;
import com.ra.repository.IProductImageRepository;
import com.ra.service.IProductImageService;
import com.ra.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductImageServiceImp implements IProductImageService {
    @Autowired
    private IProductImageRepository productImageRepository;

    @Override
    public List<ImageProduct> findAllDataByProduct_ProductId(String productId) {
        return productImageRepository.findAllDataByProduct_ProductId(productId);
    }
}
