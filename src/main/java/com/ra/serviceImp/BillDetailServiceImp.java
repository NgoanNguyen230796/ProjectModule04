package com.ra.serviceImp;

import com.ra.model.BillDetail;
import com.ra.repository.IBillDetailRepository;
import com.ra.service.IBillDetailService;
import com.ra.service.IBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BillDetailServiceImp implements IBillDetailService {
    @Autowired
    private IBillDetailRepository billDetailRepository;


    @Override
    public boolean save(BillDetail billDetail) {
        try {
            billDetailRepository.save(billDetail);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;

    }

    @Override
    public boolean update(BillDetail billDetail) {
        return false;
    }

    @Override
    public boolean delete(int billDetailId) {
        return false;
    }

    @Override
    public BillDetail findById(String billId) {
        return billDetailRepository.findAllByBill_BillId(billId);
    }

    @Override
    public List<BillDetail> findDataByBillId(String billId) {
        return billDetailRepository.findAllDataByBill_BillId(billId);
    }

    @Override
    public BillDetail findByIdBillDetailId(long billDetailId) {
        return billDetailRepository.findById(billDetailId).get();
    }
}
