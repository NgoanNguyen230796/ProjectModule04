package com.ra.repository;

import com.ra.model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ICategoryRepository extends JpaRepository<Category,Integer> {
    @Query("select ca from Category ca where ca.categoryName like %?1%")
    Page<Category> findByCategoryName(String categoryNameSearch, Pageable pageable);
    int countByCategoryNameContains(String categoryName);

}
