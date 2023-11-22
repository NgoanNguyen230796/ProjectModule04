package com.ra.controller;

import com.google.gson.Gson;
import com.ra.model.Account;
import com.ra.model.AccountUpdate;
import com.ra.model.Category;
import com.ra.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.Entity;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/accountController")
public class AccountController {

    @Autowired
    private IAccountService accountService;
    private static final int SIZE = 3;
    private static String emailDefault = "";
    private static String directionDefault = "ASC";
    private static String sortByDefault = "accId";
    private static int PAGE = 1;
    private static int pageDefault = 1;

    @GetMapping(value = "/accountGetAllData")
    public ModelAndView getAllData(Optional<String> emailSearch, Optional<Integer> page,
                                   Optional<String> direction, Optional<String> sortBy) {
        int totalPage;
        ModelAndView mav = new ModelAndView("account");
        emailDefault = emailSearch.orElse(emailDefault);
        directionDefault = direction.orElse(directionDefault);
        sortByDefault = sortBy.orElse(sortByDefault);
        pageDefault = page.orElse(pageDefault);
        //Lấy dữ liệu hiển thị
        List<Account> listAccount = accountService.displayData(emailDefault,pageDefault - 1, SIZE,
                directionDefault, sortByDefault);
        //Số lượng trang =tổng bản ghi/SIZE
        totalPage = (int) Math.ceil((double) accountService.getListPage(emailDefault) / SIZE);
        mav.addObject("listAccount", listAccount);
        mav.addObject("totalPage", totalPage);
        mav.addObject("currentPage", pageDefault);
        mav.addObject("emailDefault", emailDefault);
        mav.addObject("sortBy", sortByDefault);
        mav.addObject("direction", directionDefault);
        return mav;
    }

    @PostMapping(value = "/create")
    public String createAccount(Account account) {
        //Thực hiện gọi sang service thực hiện thêm mới
        boolean result = accountService.saveOrUpdate(account);
        if (result) {
            return "redirect:accountGetAllData";
        } else {
            return "error";
        }
    }

    @GetMapping("/initUpdate")
    public ResponseEntity<String> initUpdate(int accId) {
        //Bước 1 :gọi sang CategoryService lấy thông tin sp theo categoryId
        Account accountEdit = accountService.findById(accId);
        AccountUpdate accountUpdate=new AccountUpdate(accountEdit.getAccId(),accountEdit.getEmail(),accountEdit.getPassword(),accountEdit.getCreated(),accountEdit.isRole(),accountEdit.isAccStatus());
        //Chuyen du lieu tu java object sang JSON
        String json = new Gson().toJson(accountUpdate);
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("Content-Type", "application/json");
        return new ResponseEntity<>(json, responseHeaders, HttpStatus.OK);
    }

    @PostMapping("/update")
    public String updateAccount(Account accountEdit) {
        boolean result = accountService.saveOrUpdate(accountEdit);
        //Bước 2:nhận result và điều hướng sang trang hiển thị
        if (result) {
            return "redirect:accountGetAllData?page=1";
        } else {
            return "error";
        }
    }

    @PostMapping(value = "/lockAndUnlock")
    public String lockAccount(Account account) {
        //Thực hiện gọi sang service thực hiện thêm mới
        boolean result = accountService.saveOrUpdate(account);
        if (result) {
            return "redirect:accountGetAllData?page=1";
        } else {
            return "error";
        }
    }








}
