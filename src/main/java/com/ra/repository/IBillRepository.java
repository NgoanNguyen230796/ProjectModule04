package com.ra.repository;

import com.ra.model.Bill;
import com.ra.model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IBillRepository extends JpaRepository<Bill,String> {
    @Query("select bi from Bill bi where bi.billId like %?1%")
    Page<Bill> findByBillId(String billIdSearch, Pageable pageable);
    int countByBillIdContains(String billId);
    @Query("select COUNT(bi.billId)>=1 from Bill bi where bi.billId=:billId and bi.billStatus=1")
    boolean isCheckBillStatus(@Param("billId") String billId);

    @Query("SELECT COUNT(bi) FROM Bill bi WHERE bi.billStatus = 1")
    int countByBillStatusWait();
    @Query("SELECT COUNT(bi) FROM Bill bi WHERE bi.billStatus = 2")
    int countByBillStatusApprove();
    @Query("SELECT COUNT(bi) FROM Bill bi WHERE bi.billStatus = 3")
    int countByBillStatusDelivery();
    @Query("SELECT COUNT(bi) FROM Bill bi WHERE bi.billStatus = 4")
    int countByBillStatusReceived();
    @Query("SELECT COUNT(bi) FROM Bill bi WHERE bi.billStatus = 5")
    int countByBillStatusCancel();


}
