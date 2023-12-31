package com.ra.serviceImp;

import com.ra.model.Account;
import com.ra.model.Bill;
import com.ra.model.Category;
import com.ra.model.Product;
import com.ra.repository.IBillRepository;
import com.ra.service.IBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BillServiceImp implements IBillService {
    @Autowired
    private IBillRepository billRepository;
    @Override
    public List<Bill> displayData(String billIdSearch, int page, int size, String direction, String sortBy) {
        //Khởi tạo đối tượng Pageable
        Pageable pageable = PageRequest.of(page, size,
                direction.equals("ASC") ? Sort.Direction.ASC : Sort.Direction.DESC, sortBy);
        List<Bill> listBill = billRepository.findByBillId(billIdSearch,pageable).getContent();
        return listBill;
    }

    @Override
    public int getListPage(String billId) {
        int countBill = billRepository.countByBillIdContains(billId);
        return countBill;
    }

    @Override
    public Bill findById(String billId) {
        return billRepository.findById(billId).get();
    }


    @Override
    public boolean saveOrUpdate(Bill bill) {
        try {
            billRepository.save(bill);
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(String billId) {
        return false;
    }

    @Override
    public boolean isCheckBillStatus(String billId) {
        try {
            boolean isCheck = billRepository.isCheckBillStatus(billId);
            if (isCheck) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }


    @Override
    public int statisticalBillWait() {
        return billRepository.countByBillStatusWait();
    }

    @Override
    public int statisticalBillApprove() {
        return billRepository.countByBillStatusApprove();
    }

    @Override
    public int statisticalBillDelivery() {
        return billRepository.countByBillStatusDelivery();
    }

    @Override
    public int statisticalBillReceived() {
        return billRepository.countByBillStatusReceived();
    }

    @Override
    public int statisticalBillCancel() {
        return billRepository.countByBillStatusCancel();
    }
}
