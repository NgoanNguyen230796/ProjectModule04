package com.ra.repository;

import com.ra.model.BillDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IBillDetailRepository extends JpaRepository<BillDetail,Long> {

    BillDetail findAllByBill_BillId(String billId);


    @Query("select bd from BillDetail bd where bd.bill.billId =:billId")
    List<BillDetail> findAllDataByBill_BillId(@Param("billId")String billId);
}
