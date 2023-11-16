package com.ra.serviceImp;

import com.ra.model.Category;
import com.ra.model.Product;
import com.ra.repository.IProductRepository;
import com.ra.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImp implements IProductService {
    @Autowired
    private IProductRepository productRepository;

    @Override
    public List<Product> displayData(String productNameAndTittleSearch, int page, int size, String direction, String sortBy) {
        Pageable pageable = PageRequest.of(page, size,
                direction.equals("ASC") ? Sort.Direction.ASC : Sort.Direction.DESC, sortBy);
        List<Product> listProduct = productRepository.findByProductNameOrTittle(productNameAndTittleSearch, pageable).getContent();
        return listProduct;
    }

    @Override
    public int getListPage(String productSearch) {
        int countProduct = productRepository.countByProductIdContains(productSearch);
        return countProduct;
    }

    @Override
    public Product findByProductId(String productId) {
        return productRepository.findByProductId(productId);
    }

    @Override
    public Product save(Product product) {
        try {
            Product proNew = productRepository.save(product);
            return proNew;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean update(Product product) {
        try {
            productRepository.save(product);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(Product product) {
        try {
            productRepository.delete(product);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
