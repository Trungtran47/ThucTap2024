package com.example.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
@Table(name = "products")
public class ProductEntity extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private int productId;
    @Column(name = "product_name",length = 255, nullable = false)
    private String productName;
    @Column(name = "price")
    private double price;
    @Column(name = "description",length = 255 )
    private String description;
    @Column(name = "image")
    private String image;
    @ManyToOne
    @JoinColumn(name = "categoryId")
    private CategoryEntity category;
    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<OrderDetailEntity> orderDetails;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    public Set<OrderDetailEntity> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(Set<OrderDetailEntity> orderDetails) {
        this.orderDetails = orderDetails;
    }
}
