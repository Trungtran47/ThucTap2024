package com.example.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
@Table(name = "material")
public class MaterialEntity extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "material_id")
    private Long materialId;

    @Column(name = "material_name")
    private String materialName;
    @Column(name = "Units_of_measurement")
    private int unitsOfMeasurement;

//    trường liên kết với bảng order_in_details
    @OneToMany(mappedBy = "material", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<OrderInDetailEntity> orderInDetails;
    //    trường liên kết với bảng product_material
    @OneToMany(mappedBy = "material", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<ProductMaterialEntity> products;

    public Long getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Long materialId) {
        this.materialId = materialId;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public int getUnitsOfMeasurement() {
        return unitsOfMeasurement;
    }

    public void setUnitsOfMeasurement(int unitsOfMeasurement) {
        this.unitsOfMeasurement = unitsOfMeasurement;
    }

    public Set<OrderInDetailEntity> getOrderInDetails() {
        return orderInDetails;
    }

    public void setOrderInDetails(Set<OrderInDetailEntity> orderInDetails) {
        this.orderInDetails = orderInDetails;
    }

    public Set<ProductMaterialEntity> getProducts() {
        return products;
    }

    public void setProducts(Set<ProductMaterialEntity> products) {
        this.products = products;
    }
}
