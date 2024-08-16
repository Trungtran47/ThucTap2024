package com.example.service.impl;

import com.example.entity.ProductEntity;
import com.example.repository.ProductRepository;
import com.example.service.IProductService;
import jakarta.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class ProductServiceImp implements IProductService {
	@Autowired
    private ProductRepository productRepository;
	@Autowired
    private ServletContext servletContext;
	
	public List<ProductEntity> getAllProducts() {
        return productRepository.findAll();
    }

    public ProductEntity getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    public void saveProduct(ProductEntity product, MultipartFile file) throws IOException {
        // Kiểm tra nếu file không rỗng
        if (!file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            String uploadDir = "/resources/product";
            
            // Tạo thư mục nếu chưa tồn tại
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            
            // Tạo đường dẫn đầy đủ để lưu file
            String filePath = uploadDir + File.separator + fileName;
            file.transferTo(new File(filePath));
            
            // Lưu tên file hoặc đường dẫn vào cơ sở dữ liệu
            product.setImage("/resources/product/" + fileName);
        } else {
            // Nếu không có file mới, giữ lại hình ảnh cũ nếu có
            ProductEntity existingProduct = productRepository.findById(product.getProductId()).orElse(null);
            if (existingProduct != null) {
                product.setImage(existingProduct.getImage());
            }
        }
        // Lưu hoặc cập nhật sản phẩm
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }
}
