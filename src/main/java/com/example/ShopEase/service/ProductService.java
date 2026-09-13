package com.example.ShopEase.service;

import com.example.ShopEase.model.Product;
import com.example.ShopEase.repository.ProductRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class ProductService {

    private final ProductRepository repo;

    public ProductService(ProductRepository repo) {
        this.repo = repo;
    }

    public List<Product> getProducts() {
        return repo.findAll();
    }

    public Product getProductById(int id) {
        return repo.findById(id).orElse(null);
    }

    public Product addProduct(Product product, MultipartFile image) {
        try {

            if (image != null && !image.isEmpty()) {
                product.setImageName(image.getOriginalFilename());
                product.setImageType(image.getContentType());
                product.setImageData(image.getBytes());
            }

            return repo.save(product);

        } catch (Exception e) {
            throw new RuntimeException("Failed to upload image", e);
        }
    }

    public Product updateProduct(
            int id,
            Product product,
            MultipartFile image) {

        try {

            Product existingProduct =
                    repo.findById(id).orElse(null);

            if (existingProduct == null) {
                return null;
            }

            // Update normal product information
            existingProduct.setName(product.getName());
            existingProduct.setBrand(product.getBrand());
            existingProduct.setDescription(product.getDescription());
            existingProduct.setPrice(product.getPrice());
            existingProduct.setCategory(product.getCategory());
            existingProduct.setReleaseDate(product.getReleaseDate());
            existingProduct.setAvailable(product.isAvailable());
            existingProduct.setQuantity(product.getQuantity());

            // Update image ONLY if a new image was provided
            if (image != null && !image.isEmpty()) {

                existingProduct.setImageName(
                        image.getOriginalFilename()
                );

                existingProduct.setImageType(
                        image.getContentType()
                );

                existingProduct.setImageData(
                        image.getBytes()
                );
            }

            return repo.save(existingProduct);

        } catch (Exception e) {
            throw new RuntimeException(
                    "Failed to update product",
                    e
            );
        }
    }

    public void deleteProduct(int id) {
        repo.deleteById(id);
    }
}