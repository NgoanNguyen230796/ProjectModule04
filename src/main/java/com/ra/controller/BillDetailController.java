package com.ra.controller;

import com.ra.model.Account;
import com.ra.model.Bill;
import com.ra.model.BillDetail;
import com.ra.service.IBillDetailService;
import com.ra.service.IBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/billDetailController")
public class BillDetailController {
    @Autowired
    private IBillService billService;
    @Autowired
    private IBillDetailService billDetailService;
    @GetMapping(value = "/billDetail")
    public ModelAndView getAllData(String billId) {
        ModelAndView mav = new ModelAndView("billDetail");
        //Lấy dữ liệu hiển thị
        Bill bill= billService.findById(billId);
        List<BillDetail> listBillDetail=billDetailService.findDataByBillId(billId);
        //Số lượng trang =tổng bản ghi/SIZE
        mav.addObject("bill",bill);
        mav.addObject("listBillDetail",listBillDetail);
        return mav;
    }
}
