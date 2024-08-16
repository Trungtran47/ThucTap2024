package com.example.service;

import java.io.IOException;
import java.util.List;

import com.example.entity.ProductEntity;
import org.springframework.web.multipart.MultipartFile;



public interface IProductService {
	List<ProductEntity> getAllProducts();
    ProductEntity getProductById(Long id);
    void saveProduct(ProductEntity product, MultipartFile file) throws IOException;
    void deleteProduct(Long id);
}
