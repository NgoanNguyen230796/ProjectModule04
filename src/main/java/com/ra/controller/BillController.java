package com.ra.controller;

//import com.ra.model.Bill;

import com.ra.model.*;
import com.ra.repository.IBillRepository;
import com.ra.service.IAccountService;
import com.ra.service.IBillDetailService;
import com.ra.service.IBillService;
import com.ra.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/billController")
public class BillController {
    @Autowired
    private IBillService billService;
    @Autowired
    private IAccountService accountService;

    @Autowired
    private IProductService productService;
    @Autowired
    private IBillDetailService billDetailService;
    private static final int SIZE = 3;
    private static String billIdDefault = "";
    private static String directionDefault = "ASC";
    private static String sortByDefault = "billId";
    private static int PAGE = 1;
    private static int pageDefault = 1;

    @GetMapping(value = "/billGetAllData")
    public ModelAndView getAllData(Optional<String> billIdSearch, Optional<Integer> page,
                                   Optional<String> direction, Optional<String> sortBy) {
        int totalPage;
        ModelAndView mav = new ModelAndView("bill");
        billIdDefault = billIdSearch.orElse(billIdDefault);
        directionDefault = direction.orElse(directionDefault);
        sortByDefault = sortBy.orElse(sortByDefault);
        pageDefault = page.orElse(pageDefault);
        //Lấy dữ liệu hiển thị
        List<Bill> listBill = billService.displayData(billIdDefault, pageDefault - 1, SIZE,
                directionDefault, sortByDefault);
        List<Account> listAccount = accountService.getAllDataByAccStatusTrue();
        List<Product> listProduct = productService.getAllDataByProductStatusIsTrue();
        //Số lượng trang =tổng bản ghi/SIZE
        totalPage = (int) Math.ceil((double) billService.getListPage(billIdDefault) / SIZE);
        mav.addObject("listBill", listBill);
        mav.addObject("listAccount", listAccount);
        mav.addObject("listProduct", listProduct);
        mav.addObject("totalPage", totalPage);
        mav.addObject("currentPage", pageDefault);
        mav.addObject("billIdDefault", billIdDefault);
        mav.addObject("sortBy", sortByDefault);
        mav.addObject("direction", directionDefault);
        return mav;
    }

    @PostMapping(value = "/create")
    public String createProduct(Bill bill, String productId, float price, long quantity) {
        Bill billNew = billService.save(bill);
        if (billNew != null) {
            //Thực hiện thêm mới billId,price,quantity
            BillDetail billDetail = new BillDetail();
            billDetail.setBill(billNew);
            billDetail.setProductT2(productService.findByProductId(productId));
            billDetail.setPrice(price);
            billDetail.setQuantity(quantity);
            //Thêm mới Bill Detail
            boolean result = billDetailService.save(billDetail);
            return "redirect:billGetAllData";
        } else {
            return "error";
        }
    }
}
