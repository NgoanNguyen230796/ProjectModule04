package com.ra.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ra.model.*;
import com.ra.service.*;
import com.ra.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.http.MediaType;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.ServletResponse;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/productController")
public class ProductController {
    @Autowired
    private IProductService productService;
    @Autowired
    private ICategoryService categoryService;
    @Autowired
    private IUploadFileService uploadFileService;
    private final Gson GSON = new Gson();
    @Autowired
    private ImageProductService imageProductService;
    @Autowired
    private IProductImageService imageService;
    private static final int SIZE = 3;
    private static String productNameAndTittleDefault = "";
    private static String directionDefault = "ASC";
    private static String sortByDefault = "productId";
    private static int PAGE = 1;
    private static int pageDefault = 1;

    @GetMapping(value = "/productGetAllData")
    public ModelAndView getAllData(Optional<String> productNameAndTittleSearch, Optional<Integer> page,
                                   Optional<String> direction, Optional<String> sortBy) {
        int totalPage;
        ModelAndView mav = new ModelAndView("product");
        productNameAndTittleDefault = productNameAndTittleSearch.orElse(productNameAndTittleDefault);
        directionDefault = direction.orElse(directionDefault);
        sortByDefault = sortBy.orElse(sortByDefault);
        pageDefault = page.orElse(pageDefault);
        //Lấy dữ liệu hiển thị
        List<Product> listProduct = productService.displayData(productNameAndTittleDefault, pageDefault - 1, SIZE,
                directionDefault, sortByDefault);
        List<Category> listCategory = categoryService.findAllDataByCategoryStatusIsTrue();
        //Số lượng trang =tổng bản ghi/SIZE
        totalPage = (int) Math.ceil((double) productService.getListPage(productNameAndTittleDefault) / SIZE);
        mav.addObject("listProduct", listProduct);
        mav.addObject("listCategory", listCategory);
        mav.addObject("totalPage", totalPage);
        mav.addObject("currentPage", pageDefault);
        mav.addObject("productNameAndTittleDefault", productNameAndTittleDefault);
        mav.addObject("sortBy", sortByDefault);
        mav.addObject("direction", directionDefault);
        return mav;
    }

    @GetMapping(value = "/initCreate")
    public ModelAndView initCreateProduct() {
        Product proNew = new Product();
        //Lấy thông tin tất cả các danh mục
        List<Category> listCategory = categoryService.findAllDataByCategoryStatusIsTrue();
        ModelAndView mav = new ModelAndView("productNew");
        mav.addObject("listCategory", listCategory);
        mav.addObject("proNew", proNew);
        return mav;
    }


    @PostMapping(value = "/create")
    public String createProduct(Product product, MultipartFile productImage, MultipartFile[] otherImages) {
        String urlImage = uploadFileService.uploadFile(productImage);
        product.setProductImageName(productImage.getOriginalFilename());
        product.setImage(urlImage);
        Product proNew = productService.save(product);
        if (proNew != null) {
            //Thuc hien them moi cac anh phu cua san pham
            Arrays.asList(otherImages).forEach(image -> {
                String imageLink = uploadFileService.uploadFile(image);
                ImageProduct images = new ImageProduct();
                images.setProduct(proNew);
                images.setImageUrl(imageLink);
                //Them moi vao model Images
                boolean result = imageProductService.save(images);
            });
            return "redirect:productGetAllData";
        } else {
            return "error";
        }
    }




    @ResponseBody
    @GetMapping("/initUpdate")
    public ResponseEntity<?> initUpdate(@RequestParam(name = "productId") String productId) {
        Product productEdit = productService.findByProductId(productId);
        ProductUpdate productUpdateEdit=new ProductUpdate();
        productUpdateEdit.setProductId(productEdit.getProductId());
        productUpdateEdit.setProductName(productEdit.getProductName());
        productUpdateEdit.setPrice(productEdit.getPrice());
        productUpdateEdit.setTittle(productEdit.getTittle());
        productUpdateEdit.setProductDescription(productEdit.getProductDescription());
        System.out.println("link image:"+productEdit.getImage());
        productUpdateEdit.setImage(productEdit.getImage());
        productUpdateEdit.setProductUnit(productEdit.getProductUnit());
        productUpdateEdit.setProductStatus(productEdit.isProductStatus());
        productUpdateEdit.setCategoryId(productEdit.getCategory().getCategoryId());
        productUpdateEdit.setCategoryName(productEdit.getCategory().getCategoryName());

        //Chuyen du lieu tu java object sang JSON
//        String json = new Gson().toJson(productUpdateEdit);
        String json = new Gson().toJson(productUpdateEdit);

        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("Content-Type", "application/json");
        System.out.println("Ok Test");
        return new ResponseEntity<>(json, responseHeaders, HttpStatus.OK);
    }



    @ResponseBody
    @GetMapping("/initShow")
    public ResponseEntity<?> initShow(@RequestParam(name = "productId") String productId) {
        Product productEdit = productService.findByProductId(productId);
        ProductUpdate productUpdateEdit=new ProductUpdate();
        productUpdateEdit.setProductId(productEdit.getProductId());
        productUpdateEdit.setProductName(productEdit.getProductName());
        productUpdateEdit.setPrice(productEdit.getPrice());
        productUpdateEdit.setTittle(productEdit.getTittle());
        productUpdateEdit.setProductDescription(productEdit.getProductDescription());
        System.out.println("link image:"+productEdit.getImage());
        productUpdateEdit.setImage(productEdit.getImage());
        productUpdateEdit.setProductUnit(productEdit.getProductUnit());
        productUpdateEdit.setProductStatus(productEdit.isProductStatus());
        productUpdateEdit.setCategoryId(productEdit.getCategory().getCategoryId());
        productUpdateEdit.setCategoryName(productEdit.getCategory().getCategoryName());

        //Chuyen du lieu tu java object sang JSON
//        String json = new Gson().toJson(productUpdateEdit);
        String json = new Gson().toJson(productEdit);

        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.set("Content-Type", "application/json");
        System.out.println("Ok Test");
        return new ResponseEntity<>(json, responseHeaders, HttpStatus.OK);
    }



    @PostMapping("/update")
    public String updateProduct(Product productEdit,MultipartFile productImage) {
        String urlImage = uploadFileService.uploadFile(productImage);
        productEdit.setProductImageName(productImage.getOriginalFilename());
        productEdit.setImage(urlImage);
        //Bước 1:gọi sang studentService cập nhật thông tin sinh viên
        boolean result = productService.update(productEdit);
        //Bước 2:nhận result và điều hướng sang trang hiển thị
        if (result) {
            return "redirect:productGetAllData";
        } else {
            return "error";
        }
    }

    @GetMapping(value = "/delete")
    public ModelAndView deleteProduct(@RequestParam String productIdDelete) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/productController/productGetAllData?page=1");
        String success = "success";
        String error = "error";
        Product product=productService.findByProductId(productIdDelete);
        if(product!=null){
            if(product.getListBillDetail().size()==0){
                boolean result = productService.delete(product);
                if (result) {
                    mav.addObject("message", success);
                }
            }else {
                mav.addObject("message", error);
            }
        }
        return mav;
    }

    @GetMapping(value = "/showData")
    public ModelAndView showData(String productId) {
        ModelAndView mav = new ModelAndView();
        Product productShow=productService.findByProductId(productId);
//        List<Product> listProduct = new ArrayList<>();
//        listProduct.add(productShow);
        List<ImageProduct> listImageProduct=imageService.findAllDataByProduct_ProductId(productId);
        if(productShow!=null){
            mav.setViewName("productDetail");
            mav.addObject("productShow", productShow);
            mav.addObject("listImageProduct", listImageProduct);
        }else{
            mav.setViewName("error");
        }
        return mav;
    }






}
