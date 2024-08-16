package com.example.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;


import com.example.entity.CategoryEntity;
import com.example.service.ICategoryService;
import jakarta.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.example.repository.CategoryRepository;


@Service
public class CategoryServiceImp implements ICategoryService {
	@Autowired
    private CategoryRepository categoryRepository;
	@Autowired
    private ServletContext servletContext;
	
	public List<CategoryEntity> getAllCategories() {
        return categoryRepository.findAll();
    }

    public CategoryEntity getCategoryById(Long id) {
        return categoryRepository.findById(id).orElse(null);
    }

    public void saveCategory(CategoryEntity category, MultipartFile file) throws IOException {
        if (!file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            
            
            String uploadDir = servletContext.getRealPath("/assets/CategoryImage/");
            
            // Tạo thư mục nếu chưa tồn tại
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            
            // Tạo đường dẫn đầy đủ để lưu file
            String filePath = uploadDir + File.separator + fileName;
            file.transferTo(new File(filePath));
            
            // Lưu tên file hoặc đường dẫn vào cơ sở dữ liệu
//            category.setImage(filePath);
            categoryRepository.save(category);
        }
      
    }

    public void deleteCategory(Long id) {
        categoryRepository.deleteById(id);
    }

	
}
