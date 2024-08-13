package com.example.service;

import java.io.IOException;
import java.util.List;

import com.example.entity.CategoryEntity;
import org.springframework.web.multipart.MultipartFile;




public interface ICategoryService {
	List<CategoryEntity> getAllCategories();
    CategoryEntity getCategoryById(int id);
    void saveCategory(CategoryEntity category, MultipartFile file) throws IOException;
    void deleteCategory(int id);  
}
