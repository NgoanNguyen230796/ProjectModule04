package com.ra.repository;

import com.ra.model.Bill;
import com.ra.model.BillDetail;
import com.ra.model.StatiscalMoneyAndDate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface IStatiscalMoneyAndDateRepository extends JpaRepository<StatiscalMoneyAndDate, Integer> {


//    @Query(value = """
//             SELECT SUM(total), bi.created
//             FROM billdetail bd
//                      JOIN bill bi ON bd.bill_id = bi.bill_id
//             WHERE bi.bill_status = 2 AND DATE(bi.created) = CURRENT_DATE
//             GROUP BY bi.created
//            """,nativeQuery = true)
//    List<StatiscalMoneyAndDate> total();

    @Query("SELECT NEW com.ra.model.StatiscalMoneyAndDate(SUM(bd.total), bi.created) " +
            "FROM BillDetail bd " +
            "JOIN bd.bill bi " +
            "WHERE bi.billStatus = 2 AND DATE(bi.created) = CURRENT_DATE " +
            "GROUP BY bi.created")
    List<StatiscalMoneyAndDate> total();




}
