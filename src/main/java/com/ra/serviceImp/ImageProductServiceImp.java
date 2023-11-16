package com.ra.serviceImp;

import com.ra.model.ImageProduct;
import com.ra.repository.IImagesRepository;
import com.ra.service.ImageProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageProductServiceImp implements ImageProductService {
    @Autowired
    private IImagesRepository imagesRepository;

    @Override
    public boolean save(ImageProduct images) {
        try {
            imagesRepository.save(images);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(String productId) {
        try {
            imagesRepository.deleteByProduct_ProductId(productId);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
