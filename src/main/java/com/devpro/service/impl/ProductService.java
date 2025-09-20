package com.devpro.service.impl;

import com.devpro.dto.product.ProductDto;
import com.devpro.models.*;
import com.devpro.repository.ProductRepository;
import com.devpro.repository.WishListItemRepository;
import com.devpro.repository.WishListRepository;
import com.devpro.service.IProductService;
import com.devpro.service.specification.ProductSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ProductService implements IProductService {
    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private WishListRepository wishListRepository;

    @Autowired
    private WishListItemRepository wishListItemRepository;

    @Autowired
    private UserService userService;

    @Override
    public Product save(Product product) {
        return productRepository.save(product);
    }

    @Override
    public Page<Product> findAll(Pageable pageable) {
        return productRepository.findAll(pageable);
    }

    @Override
    public Page<Product> findAll(Specification<Product> spec, Pageable pageable) {
        return productRepository.findAll(spec, pageable);
    }

    @Override
    public List<Product> findAll(Specification<Product> spec) {
        return productRepository.findAll(spec);
    }


    @Override
    public Product findById(int id) {
        return productRepository.findById(id).get();
    }

    @Override
    public void deleteProductById(int id) {
        productRepository.deleteById(id);
    }

    public ProductDto convertProduct(Product product) {
        return ProductDto.builder()
                .id(product.getId())
                .name(product.getName())
                .price(product.getPrice())
                .quantity(product.getQuantity())
                .sold(product.getSold())
                .shortDesc(product.getShortDesc())
                .build();
    }

    public Page<Product> filterProduct(Pageable page, String tradeMark, String color, String rom, String price) {
        if(tradeMark == null &&  color == null && rom == null && price == null){
            return productRepository.findAll(page);
        }
        Specification<Product> combinedSpec = Specification.allOf();
        if(tradeMark != null){
            List<String> tradeMarkList = Arrays.asList(tradeMark.split("-"));
            combinedSpec = combinedSpec.and(ProductSpec.getListCategoryProduct(tradeMarkList));
        }
        if(color != null){
            List<String> colorList = Arrays.asList(color.split("-"));
            combinedSpec = combinedSpec.and(ProductSpec.getProductByListColor(colorList));
        }
        if(rom != null){
            List<String> romList = Arrays.asList(rom.split("-"));
            List<Integer> roms = romList.stream()
                    .map(Integer::parseInt)
                    .collect(Collectors.toList());
            combinedSpec = combinedSpec.and(ProductSpec.getProductByListRom(roms));
        }
        if(price != null){
            double minPrice = 0;
            double maxPrice=0;
            switch (price){
                case "100-500":
                    minPrice = 100;
                    maxPrice = 500;
                    break;
                case "500-1000":
                    minPrice = 500;
                    maxPrice = 1000;
                    break;
                case "1001":
                    minPrice = 1001;
                    maxPrice = 10000000;
                    break;
            }
            combinedSpec = combinedSpec.and(ProductSpec.getProductByPrice(minPrice, maxPrice));
        }

        return  productRepository.findAll(combinedSpec, page);
    }

    public Boolean handleProductToWishList(String email, int productId) {
        User user = this.userService.getUserByEmail(email);
        if(user != null){
            Wishlist wishlist = this.wishListRepository.findByUser(user);
            if(wishlist == null){
               Wishlist newWishlist = new Wishlist();
               newWishlist.setUser(user);
               wishlist = this.wishListRepository.save(newWishlist);
            }

            Optional<Product> product = productRepository.findById(productId);
            if(product.isPresent()){
                Product realProduct = product.get();
                WishlistItemKey wishlistItemKey = new WishlistItemKey();
                wishlistItemKey.setProductId(realProduct.getId());
                wishlistItemKey.setWishlistId(wishlist.getId());

                WishlistItem wishlistItem = wishListItemRepository.findBywishlistItemKey(wishlistItemKey);
                if(wishlistItem != null){
                    this.wishListItemRepository.delete(wishlistItem);
                    return false;
                }
                else{
                    wishlistItem = new WishlistItem();
                    wishlistItem.setWishlistItemKey(wishlistItemKey);
                    wishlistItem.setProduct(realProduct);
                    wishlistItem.setWishlist(wishlist);
                    this.wishListItemRepository.save(wishlistItem);
                    return true;
                }

            }
        }
        return false;
    }
}
