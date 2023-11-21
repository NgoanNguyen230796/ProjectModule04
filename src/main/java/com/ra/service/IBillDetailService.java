package com.ra.service;

import com.ra.model.Account;
import com.ra.model.Bill;
import com.ra.model.BillDetail;
import com.ra.model.Product;

import java.util.List;

public interface IBillDetailService {
    boolean save(BillDetail billDetail);
    boolean update(BillDetail billDetail);
    boolean delete(int billDetailId);
    BillDetail findById(String billId);

    List<BillDetail> findDataByBillId(String billId);


}
