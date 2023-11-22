package com.ra.controller;

import com.ra.model.Category;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/loginController")
public class LoginController {
    private String messageError="*Email hoặc Password không đúng,vui lòng nhập lại";
    @GetMapping(value = "/login")
    public ModelAndView loginForm() {
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }
//    @PostMapping(value = "/login")
//    public ModelAndView createCategories(String email, String password) {
//        ModelAndView mav1 = new ModelAndView("category");
//        ModelAndView mav2 = new ModelAndView("login");
//        if(email.equals("admin@gmail.com")&& password.equals("1234")){
//            System.out.println("Đăng nhập thành công");
////            model.addAttribute("messageSuccess",messageSuccess) ;
////           model.addAttribute("messageError",messageError) ;
//            return "redirect:/categoryController/categoryGetAllData";
////            return mav1;
//
//        }else{
//            mav2.addObject("messageError",messageError) ;
//            return mav2;
//        }
//    }

    @PostMapping(value = "/login")
    public ModelAndView createCategories(String email, String password) {
        ModelAndView mav = new ModelAndView();
        if (email.equals("admin@gmail.com") && password.equals("1234")) {
            mav.setViewName("redirect:/statisticalController/statisticalData");
        } else {
            mav.setViewName("login");
            mav.addObject("messageError", messageError);
        }

        return mav;
    }

}
