package com.ra.serviceImp;

import com.ra.model.Category;
import com.ra.repository.ICategoryRepository;
import com.ra.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImp implements ICategoryService {
    @Autowired
    private ICategoryRepository categoryRepository;

    @Override
    public List<Category> displayData(String categoryNameSearch, int page, int size, String direction, String sortBy) {
        //Khởi tạo đối tượng Pageable
        Pageable pageable = PageRequest.of(page,size,
                direction.equals("ASC")? Sort.Direction.ASC: Sort.Direction.DESC,sortBy);
        List<Category> listCategory = categoryRepository.findByCategoryName(categoryNameSearch,pageable).getContent();
        return listCategory;
    }

    @Override
    public int getListPage(String categoryName) {
        int countCategory = categoryRepository.countByCategoryNameContains(categoryName);
        return countCategory;
    }

    @Override
    public Category findById(int categoryId) {
        return categoryRepository.findById(categoryId).get();
    }

    @Override
    public boolean saveOrUpdate(Category category) {
        try {
            categoryRepository.save(category);
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int categoryId) {
        try {
            categoryRepository.delete(findById(categoryId));
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

}
