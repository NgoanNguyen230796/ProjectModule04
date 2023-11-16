package com.ra.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ra.model.Category;
import com.ra.model.ImageProduct;
import com.ra.model.Product;
import com.ra.service.*;
import com.ra.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.http.MediaType;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.ServletResponse;
import java.io.Writer;
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
        List<Category> listCategory = categoryService.findAllDataByCategoryIdAndCategoryName();
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
        List<Category> listCategory = categoryService.findAllDataByCategoryIdAndCategoryName();
        ModelAndView mav = new ModelAndView("productNew");
        mav.addObject("listCategory", listCategory);
        mav.addObject("proNew", proNew);
        return mav;
    }


//    @PostMapping(value = "/create")
//    public String createProduct(Product product, MultipartFile productImage) {
//        String urlImage = uploadFileService.uploadFile(productImage);
//        product.setImage(urlImage);
//        boolean result = productService.save(product);
//        if (result) {
//            return "redirect:productGetAllData";
//        } else {
//            return "error";
//        }
//    }

    @PostMapping(value = "/create")
    public String createProduct(Product product, MultipartFile productImage, MultipartFile[] otherImages) {
        String urlImage = uploadFileService.uploadFile(productImage);
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

    //Show dữ liệu lên trên form
//    @GetMapping("/initUpdate")
//    public ResponseEntity<String> initUpdate(@RequestParam(name = "productId") String productId) {
//        try {
//            // Bước 1: Gọi sang productService để lấy thông tin sản phẩm theo productId
//            Product productEdit = productService.findByProductId(productId);
//
//            // Chuyển đổi đối tượng Product và Category thành JSON
//            String jsonProduct = GSON.toJson(productEdit);
//            String jsonCategory = GSON.toJson(productEdit.getCategory());
//
//            // Tạo một đối tượng JsonObject để kết hợp cả hai JSON
//            JsonObject jsonObject = new JsonObject();
//            jsonObject.addProperty("product", jsonProduct);
//            jsonObject.addProperty("category", jsonCategory);
//
//            // Trả về ResponseEntity chứa dữ liệu JSON và header "Content-Type"
//            HttpHeaders responseHeaders = new HttpHeaders();
//            responseHeaders.setContentType(MediaType.APPLICATION_JSON);
//            responseHeaders.setContentLength(jsonObject.toString().length());
//
//            return ResponseEntity.ok().header("Content-Type", "application/json").body(jsonObject.toString());
//        } catch (Exception e) {
//            e.printStackTrace(); // In stack trace để xem lỗi chi tiết
//            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Internal Server Error");
//        }
//    }

//    @GetMapping("/initUpdate")
//    public ResponseEntity<String> initUpdate(@RequestParam(name = "productId") String productId) {
//        try {
//            // Bước 1: Gọi sang productService để lấy thông tin sản phẩm theo productId
//            Product productEdit = productService.findByProductId(productId);
//
//            // Chuyển đổi đối tượng Product và Category thành JSON
//            Gson gson = new Gson();
//            String jsonProduct = gson.toJson(productEdit);
//            String jsonCategory = gson.toJson(productEdit.getCategory());
//
//            // Tạo một đối tượng JsonObject để kết hợp cả hai JSON
//            JsonObject jsonObject = new JsonObject();
//            jsonObject.addProperty("product", jsonProduct);
//            jsonObject.addProperty("category", jsonCategory);
//
//            // Trả về ResponseEntity chứa dữ liệu JSON và header "Content-Type"
//            HttpHeaders responseHeaders = new HttpHeaders();
//            responseHeaders.setContentType(MediaType.APPLICATION_JSON);
//            responseHeaders.setContentLength(jsonObject.toString().length());
//
//            return ResponseEntity.ok().headers(responseHeaders).body(jsonObject.toString());
//        } catch (Exception e) {
//            e.printStackTrace(); // In stack trace để xem lỗi chi tiết
//            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Internal Server Error");
//        }
//    }

    @ResponseBody
    @GetMapping("/initUpdate")
    public ResponseEntity<?> initUpdate(@RequestParam(name = "productId") String productId) {
        Product productEdit = productService.findByProductId(productId);
        //Chuyen du lieu tu java object sang JSON
//        String json = new Gson().toJson(productEdit);
//        HttpHeaders responseHeaders = new HttpHeaders();
//        responseHeaders.set("Content-Type", "application/json");
        return ResponseEntity.ok().body(productEdit);
//        return new ResponseEntity<>(json, responseHeaders, HttpStatus.OK);
    }


    //Show dữ liệu lên trên form
//    @GetMapping(value = "/initUpdate")
//    public String initUpdate(ModelMap modelMap, @RequestParam(name = "productId")String productId) {
//        Product productEdit = productService.findByProductId(productId);
//        modelMap.addAttribute("productEdit",productEdit);
//        return "productUpdate";
//    }


    @PostMapping("/update")
    public String updateProduct(Product productEdit) {
        //Bước 1:gọi sang studentService cập nhật thông tin sinh viên
        boolean result = productService.update(productEdit);
        //Bước 2:nhận result và điều hướng sang trang hiển thị
        if (result) {
            return "redirect:productGetAllData";
        } else {
            return "error";
        }
    }

    @PostMapping(value = "/delete")
    public String deleteProduct(String productIdDelete) {
        //Bước 1: gọi sang imageProductService thực hiện xóa ImageId theo productIdDelete
//        boolean resultImageProduct = imageProductService.delete(productIdDelete);
//        if (resultImageProduct) {
//            boolean result = productService.delete(productIdDelete);
//            if (result) {
//                //Bước 2: Nhận result và điều hướng sang trang hiển thị
//                return "redirect:productGetAllData";
//            }else {
//                return "error";
//            }
//        } else {
//            return "error";
//        }
        Product product=productService.findByProductId(productIdDelete);
        if(product==null){
            return "error";
        }else{
            boolean result = productService.delete(product);
            if (result) {
                return "redirect:productGetAllData";
            } else {
                return "error";
            }
        }
    }


}
