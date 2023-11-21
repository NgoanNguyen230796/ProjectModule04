package com.ra.controller;

//import com.ra.model.Bill;

import com.google.gson.Gson;
import com.ra.model.*;
import com.ra.repository.IBillRepository;
import com.ra.service.IAccountService;
import com.ra.service.IBillDetailService;
import com.ra.service.IBillService;
import com.ra.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
//    public String createProduct(Bill bill, String productId, float price, long quantity) {
    public String createBill(Bill bill) {
        Bill billNew = billService.save(bill);
        if (billNew != null) {
            //Thực hiện thêm mới billId,price,quantity
//            BillDetail billDetail = new BillDetail();
//            billDetail.setBill(billNew);
//            billDetail.setProductT2(productService.findByProductId(productId));
//            billDetail.setPrice(price);
//            billDetail.setQuantity(quantity);
            //Thêm mới Bill Detail
//            boolean result = billDetailService.save(billDetail);
            return "redirect:billGetAllData";
        } else {
            return "error";
        }
    }

    @GetMapping(value = "/initCreate")
    public String initCreate(Model model, @RequestParam String billId) {
        String success = "successInit";
        String error = "errorInit";
        // Bước 1: Gọi sang billService thực hiện ktra
        boolean result = billService.isCheckBillStatus(billId);
        // Bước 2: Nhận result và điều hướng sang trang hiển thị
        if (result) {
            // Trường hợp xóa thành công, thêm thông báo vào model
            model.addAttribute("messageInit", success);
        } else {

            model.addAttribute("messageInit", error);
        }

        // Trả về ModelAndView chứa dữ liệu và điều hướng đến trang category.jsp
        return "redirect:billGetAllData";
    }

    @PostMapping(value = "/createBillDetail")
    public String createBillDetail(BillDetail billDetail,String productId,String billId) {
        BillDetail billDetailNew = new BillDetail();
        billDetailNew.setBill(billService.findById(billId));
        billDetailNew.setProductT2(productService.findByProductId(productId));
        billDetailNew.setPrice(billDetail.getPrice());
        billDetailNew.setQuantity(billDetail.getQuantity());
        boolean result = billDetailService.save(billDetailNew);
        if(result){
            return "redirect:billGetAllData";
        }else {
            return "error";
        }
    }

    @GetMapping("/initShow")
    public ResponseEntity<String> initUpdate(String billId) {
        //Bước 1 :gọi sang billService lấy thông tin sp theo billId
        Bill billEdit = billService.findById(billId);
        BillDetail billDetailEdit=billDetailService.findById(billId);
        BillAndBillDetailUpdate billAndBillDetailUpdate=new BillAndBillDetailUpdate(billEdit.getBillId(),billEdit.getCreated()
                ,billEdit.getBillStatus(),billEdit.getAccount().getAccId(),billDetailEdit.getBillDetailId(),
                billDetailEdit.getPrice(),billDetailEdit.getQuantity(),billDetailEdit.getTotal());

//        //Chuyen du lieu tu java object sang JSON
        String json = new Gson().toJson(billAndBillDetailUpdate);
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("Content-Type", "application/json");
        return new ResponseEntity<>(json, responseHeaders, HttpStatus.OK);
    }


}
