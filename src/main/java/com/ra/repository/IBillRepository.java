package com.ra.repository;

import com.ra.model.Bill;
import com.ra.model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IBillRepository extends JpaRepository<Bill,String> {
    @Query("select bi from Bill bi where bi.billId like %?1%")
    Page<Bill> findByBillId(String billIdSearch, Pageable pageable);
    int countByBillIdContains(String billId);

}
