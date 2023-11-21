package com.ra.service;

import com.ra.model.Account;
import com.ra.model.Bill;
import com.ra.model.Category;

import java.util.List;

public interface IBillService {
    List<Bill> displayData(String billIdSearch, int page, int size, String direction, String sortBy);
    int getListPage(String billId);
    Bill findById(String billId);
    boolean saveOrUpdate(Bill bill);

    boolean delete(String billId);
    boolean isCheckBillStatus(String billId);
    int statisticalBillWait();
    int statisticalBillApprove();
    int statisticalBillDelivery();
    int statisticalBillReceived();
    int statisticalBillCancel();


}
