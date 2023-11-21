package com.ra.controller;

import com.google.gson.Gson;
import com.ra.model.Category;
import com.ra.model.CategoryUpdate;
import com.ra.service.ICategoryService;
import jakarta.validation.constraints.NotBlank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;

import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping("/categoryController")
public class CategoryController {
    @Autowired
    private ICategoryService categoryService;
    private static final int SIZE = 3;
    private static String categoryNameDefault = "";
    private static String directionDefault = "ASC";
    private static String sortByDefault = "categoryId";
    private static int PAGE = 1;
    private static int pageDefault = 1;
//    private static String success="Xóa thành công";
//    private static String error="Danh mục có chứa sản phẩm không thể xóa được";

    @GetMapping(value = "/categoryGetAllData")
    public ModelAndView getAllData(Optional<String> categoryNameSearch, Optional<Integer> page,
                                   Optional<String> direction, Optional<String> sortBy) {
        int totalPage;
        ModelAndView mav = new ModelAndView("category");
        categoryNameDefault = categoryNameSearch.orElse(categoryNameDefault);
        directionDefault = direction.orElse(directionDefault);
        sortByDefault = sortBy.orElse(sortByDefault);
        pageDefault = page.orElse(pageDefault);
        //Lấy dữ liệu hiển thị
        List<Category> listCategory = categoryService.displayData(categoryNameDefault, pageDefault - 1, SIZE,
                directionDefault, sortByDefault);
        //Số lượng trang =tổng bản ghi/SIZE
        totalPage = (int) Math.ceil((double) categoryService.getListPage(categoryNameDefault) / SIZE);
        mav.addObject("listCategory", listCategory);
        mav.addObject("totalPage", totalPage);
        mav.addObject("currentPage", pageDefault);
        mav.addObject("categoryNameDefault", categoryNameDefault);
        mav.addObject("sortBy", sortByDefault);
        mav.addObject("direction", directionDefault);
        return mav;
    }
//    @GetMapping(value = "/getDataForm")
//    public Model getDataForm(Model model, @NotBlank @RequestParam (name = "categoryName") String categoryName) {
//        model.addAttribute("responseCategoryName",categoryName);
//        return model;
//    }
//    @ExceptionHandler(MethodArgumentNotValidException.class)
//    public ResponseEntity<String> errorForm(MethodArgumentNotValidException e){
//        return ResponseEntity.ok(e.getMessage());
//    }


    //Thêm mới
    @PostMapping(value = "/create")
    public String createCategories(Category category) {
        //Thực hiện gọi sang service thực hiện thêm mới
        boolean result = categoryService.saveOrUpdate(category);
        if (result) {
            return "redirect:categoryGetAllData";
        } else {
            return "error";
        }
    }


    //Show dữ liệu lên trên form
    @GetMapping("/initUpdate")
    public ResponseEntity<String> initUpdate(int categoryId) {
        //Bước 1 :gọi sang CategoryService lấy thông tin sp theo categoryId
        Category categoryEdit = categoryService.findById(categoryId);
        CategoryUpdate categoryUpdateEdit = new CategoryUpdate(categoryEdit.getCategoryId(), categoryEdit.getCategoryName(), categoryEdit.getCategoryDescription(), categoryEdit.isCategoryStatus());
        //Chuyen du lieu tu java object sang JSON
        String json = new Gson().toJson(categoryUpdateEdit);
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("Content-Type", "application/json");
        return new ResponseEntity<>(json, responseHeaders, HttpStatus.OK);
    }

    @PostMapping("/update")
    public String updateCategory(Category categoryEdit) {
        boolean result = categoryService.saveOrUpdate(categoryEdit);
        //Bước 2:nhận result và điều hướng sang trang hiển thị
        if (result) {
            return "redirect:categoryGetAllData";
        } else {
            return "error";
        }
    }

    @GetMapping(value = "/delete")
    public ModelAndView deleteCategories(@RequestParam int catalogIdDelete) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/categoryController/categoryGetAllData?page=1");
        String success = "success";
        String error = "error";
        // Bước 1: Gọi sang CategoriesService thực hiện xóa sản phẩm
        boolean result = categoryService.delete(catalogIdDelete);
        // Bước 2: Nhận result và điều hướng sang trang hiển thị
        if (result) {
            // Trường hợp xóa thành công, thêm thông báo vào model
            mav.addObject("message", success);
        } else {
            mav.addObject("message", error);
        }
        // Trả về ModelAndView chứa dữ liệu và điều hướng đến trang category.jsp
        return mav;
    }

//    @GetMapping(value = "/delete")
//    public ModelAndView deleteCategories(@RequestParam int catalogIdDelete) {
//        ModelAndView mav = new ModelAndView();
//        String success = "success";
//        String error = "error";
//        mav.setViewName("redirect:/categoryController/categoryGetAllData");
//
//        if (categoryDeleteCheck.getListProduct().size() != 0) {
//            model.addAttribute("message", error);
//        } else {
//        // Bước 1: Gọi sang CategoriesService thực hiện xóa sản phẩm
//        boolean result = categoryService.delete(catalogIdDelete);
//        // Bước 2: Nhận result và điều hướng sang trang hiển thị
//        if (result) {
//            // Trường hợp xóa thành công, thêm thông báo vào model
//            mav.addObject("message", success);
//
//        } else {
//            mav.addObject("message", error);
//        }
//
//        return mav;
//    }


}
