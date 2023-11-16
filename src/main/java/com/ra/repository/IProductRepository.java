package com.ra.repository;

import com.ra.model.Category;
import com.ra.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IProductRepository extends JpaRepository<Product, String> {

    //Tìm kiếm sản phẩm theo tên sản phẩm hoặc là tittle và phân trang luôn
    @Query("select pr from Product pr where pr.productName like %?1% or pr.tittle like %?1%")
    Page<Product> findByProductNameOrTittle(String productNameSearch, Pageable pageable);

    //Trả về số trang cần phân trang khi tìm kiếm dữ liệu theo tên hoặc theo tittle

    @Query("select count(pr.productId) from Product pr where pr.productName like %?1% or pr.tittle like %?1%")
    int countByProductIdContains(String productSearch);

    @Query("SELECT pr FROM Product pr WHERE pr.productId = :productId")
    Product findByProductId(@Param("productId") String productId);
//    Product findByProductId(@Param("productId") String productId);

}
