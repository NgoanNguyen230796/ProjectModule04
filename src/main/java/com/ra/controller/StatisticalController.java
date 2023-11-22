package com.ra.controller;

import com.ra.model.StatiscalMoneyAndDate;
import com.ra.service.IAccountService;
import com.ra.service.IBillService;
import com.ra.service.IProductService;
import com.ra.service.IStatiscalMoneyAndDateService;
import com.ra.service.IStatiscalMoneyAndDateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/statisticalController")
public class StatisticalController {
    private final IAccountService accountService;
    private final IProductService productService;
    private final IBillService billService;
    private final IStatiscalMoneyAndDateService statiscalMoneyAndDateService;

    public StatisticalController(IAccountService accountService, IProductService productService, IBillService billService, IStatiscalMoneyAndDateService statiscalMoneyAndDateService) {
        this.accountService = accountService;
        this.productService = productService;
        this.billService = billService;
        this.statiscalMoneyAndDateService = statiscalMoneyAndDateService;
    }


    @GetMapping(value = "/statisticalData")
    public ModelAndView getAllData() {

        ModelAndView mav = new ModelAndView("statistical");
        int accActive = accountService.statisticalAccountActive();
        int accInActive = accountService.statisticalAccountInActive();

        int productActive = productService.statisticalProductActive();
        int productInActive = productService.statisticalProductInActive();

        int countByBillStatusWait = billService.statisticalBillWait();
        int countByBillStatusApprove = billService.statisticalBillApprove();
        int countByBillStatusDelivery = billService.statisticalBillDelivery();
        int countByBillStatusReceived = billService.statisticalBillReceived();
        int countByBillStatusCancel = billService.statisticalBillCancel();
        List<StatiscalMoneyAndDate> listStatisticalMoneyAndDate=statiscalMoneyAndDateService.total();


        //Số lượng trang =tổng bản ghi/SIZE
        mav.addObject("accActive", accActive);
        mav.addObject("accInActive", accInActive);

        mav.addObject("productActive", productActive);
        mav.addObject("productInActive", productInActive);

        mav.addObject("countByBillStatusWait", countByBillStatusWait);
        mav.addObject("countByBillStatusApprove", countByBillStatusApprove);
        mav.addObject("countByBillStatusDelivery", countByBillStatusDelivery);
        mav.addObject("countByBillStatusReceived", countByBillStatusReceived);
        mav.addObject("countByBillStatusCancel", countByBillStatusCancel);
        mav.addObject("listStatisticalMoneyAndDate", listStatisticalMoneyAndDate);
        return mav;
    }
}
