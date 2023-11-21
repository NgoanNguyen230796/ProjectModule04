package com.ra.controller;

import com.ra.service.IAccountService;
import com.ra.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/statisticalController")
public class StatisticalController {
    @Autowired
    private IAccountService accountService;
    @Autowired
    private IProductService productService;
    @GetMapping(value = "/statisticalData")
    public ModelAndView getAllData() {

        ModelAndView mav = new ModelAndView("statistical");
       int accActive=accountService.statisticalAccountActive();
       int accInActive=accountService.statisticalAccountInActive();
       int productActive=productService.statisticalProductActive();
       int productInActive=productService.statisticalProductInActive();

        //Số lượng trang =tổng bản ghi/SIZE
        mav.addObject("accActive", accActive);
        mav.addObject("accInActive", accInActive);
        mav.addObject("productActive", productActive);
        mav.addObject("productInActive", productInActive);
        return mav;
    }
}
