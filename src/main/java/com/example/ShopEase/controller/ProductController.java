package com.example.ShopEase.controller;

import com.example.ShopEase.model.Product;
import com.example.ShopEase.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@RequestMapping("/api/products")
@CrossOrigin(origins = "http://localhost:5176")
public class ProductController {

    private final ProductService service;

    public ProductController(ProductService service) {
        this.service = service;
    }

    @GetMapping
    public List<Product> getProducts() {
        return service.getProducts();
    }

    @GetMapping("/{id}")
    public Product getProductById(@PathVariable int id) {
        return service.getProductById(id);
    }

    @GetMapping("/{id}/image")
    public ResponseEntity<byte[]> getProductImage(@PathVariable int id) {

        Product product = service.getProductById(id);

        if (product == null || product.getImageData() == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity
                .ok()
                .header("Content-Type", product.getImageType())
                .body(product.getImageData());
    }

    @PostMapping(consumes = "multipart/form-data")
    public Product addProduct(
            @RequestPart("product") Product product,
            @RequestPart("image") MultipartFile image) {

        return service.addProduct(product, image);
    }

    @PutMapping(value = "/{id}", consumes = "multipart/form-data")
    public Product updateProduct(
            @PathVariable int id,
            @RequestPart("product") Product product,
            @RequestPart(value = "image", required = false) MultipartFile image) {

        return service.updateProduct(id, product, image);
    }

    @DeleteMapping("/{id}")
    public void deleteProduct(@PathVariable int id) {
        service.deleteProduct(id);
    }
}