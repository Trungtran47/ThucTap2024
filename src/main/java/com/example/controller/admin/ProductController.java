package com.example.controller.admin;

import com.example.entity.CategoryEntity;
import com.example.entity.ProductEntity;
import com.example.service.ICategoryService;
import com.example.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


//
//@Controller
//@RequestMapping("/amdin/product")
public class ProductController {
//	@Autowired
//	private IProductService iProductService;
//	@Autowired
//	private ICategoryService iCategoryService;
//
//	@GetMapping
//	public String listProducts(Model model) {
//
//		model.addAttribute("contentPage", "/WEB-INF/jsp/pages/products.jsp");
//
//		model.addAttribute("products", iProductService.getAllProducts());
//		return "home";
//	}
//
//	@GetMapping("/new")
//	public String showCreateForm(Model model) {
//		model.addAttribute("product", new ProductEntity());
//		model.addAttribute("categories", iCategoryService.getAllCategories());
//		model.addAttribute("contentPage", "/WEB-INF/jsp/form/product-form.jsp");
//		return "home";
//	}
//
//	@PostMapping("/save")
//	public String saveProduct(@ModelAttribute("product") ProductEntity product, @RequestParam("categoryId") int categoryId,
//	        @RequestParam("imageFile") MultipartFile file) {
//	    try {
//	        CategoryEntity category = iCategoryService.getCategoryById(categoryId);
//	        product.setCategory(category);
//
//
//	            iProductService.saveProduct(product, file);
//
//	    } catch (Exception e) {
//	        e.printStackTrace();
//	        return "error";
//	    }
//	    return "redirect:/products";
//	}
//
//
//	@GetMapping("/edit/{id}")
//	public String showEditForm(@PathVariable("id") int id, Model model) {
//		ProductEntity product = iProductService.getProductById(id);
//		if (product != null) {
//			model.addAttribute("product", product);
//			model.addAttribute("categories", iCategoryService.getAllCategories());
//			model.addAttribute("contentPage", "/WEB-INF/jsp/form/product-form.jsp");
//		} else {
//			return "redirect:/products";
//		}
//		return "home";
//	}
//
//	@PostMapping("/update/{id}")
//	public String updateProduct(@PathVariable("id") int id, @ModelAttribute("product") ProductEntity product,
//			@RequestParam("imageFile") MultipartFile file, @RequestParam("categoryId") int categoryId) {
//		try {
//			CategoryEntity category = iCategoryService.getCategoryById(categoryId);
//			product.setProductId(id);
//			product.setCategory(category);
//			iProductService.saveProduct(product, file);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return "error"; // Trả về trang lỗi nếu có
//		}
//		return "redirect:/products";
//	}
//
//	@GetMapping("/delete/{id}")
//	public String deleteProduct(@PathVariable("id") int id) {
//		iProductService.deleteProduct(id);
//		return "redirect:/products";
//	}
}
