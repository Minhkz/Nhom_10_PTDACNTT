package com.devpro.controller.admin;

import com.devpro.dto.product.CreateProductDto;
import com.devpro.dto.product.ProductDto;
import com.devpro.dto.product.UpdateProductDto;
import com.devpro.dto.product.ViewProductDto;
import com.devpro.models.Category;
import com.devpro.models.Product;
import com.devpro.models.Specification;
import com.devpro.service.impl.CategoryService;
import com.devpro.service.impl.ProductService;
import com.devpro.service.impl.SpeService;
import com.devpro.service.impl.UploadService;
import com.devpro.service.specification.ProductSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/admin/products")
public class ProductAdminController {

    @Autowired
    private ProductService productService;

    @Autowired
    private UploadService uploadService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private SpeService speService;

    @GetMapping
    public String productPage(Model model, @RequestParam(value = "page", defaultValue = "1") int page,
                              @RequestParam(name = "name", required = false)String name) {
        Pageable pageable = PageRequest.of(page-1, 5,  Sort.by("id").descending());

        Page<Product> productPage;
        if(name==null||name.isEmpty()){
            productPage  = productService.findAll(pageable);
        }else {
            productPage = productService.findAll(ProductSpec.searchByName(name), pageable);
            model.addAttribute("nameSearch", name);
        }


        List<ProductDto> productDtos = productPage.getContent().stream().map(product -> productService.convertProduct(product)).collect(Collectors.toList());
        int totalPages = productPage.getTotalPages();


        model.addAttribute("totalPages", totalPages);
        model.addAttribute("currentPage", page);
        model.addAttribute("products", productDtos);
        return "admin/products/product";
    }

    @GetMapping("/creates")
    public String productCreatePage(Model model){
        CreateProductDto createProductDto = new CreateProductDto();
        model.addAttribute("newProduct", createProductDto);
        return "admin/products/create";
    }
    //create
    @PostMapping("/create")
    public String productCreate(@ModelAttribute("newProduct") CreateProductDto createProductDto, @RequestParam("nhatminhFile") MultipartFile file){
        String avatar = uploadService.handleSaveUploadFile("product", file);
        Product product = new Product();
        product.setAvatar(avatar);
        product.setName(createProductDto.getName());
        product.setPrice(createProductDto.getPrice());
        product.setDetailDesc(createProductDto.getDetailDesc());
        product.setShortDesc(createProductDto.getShortDesc());
        product.setQuantity(createProductDto.getQuantity());
        product.setFeatured(createProductDto.getFeatured());
        product.setDiscount(createProductDto.getDiscount());

        Category  category = categoryService.findById(createProductDto.getCategoryId());
        product.setCategory(category);

        Specification specification = new Specification();
        specification.setColor(createProductDto.getColor());
        specification.setPin(createProductDto.getPin());
        specification.setScreenType(createProductDto.getScreenType());
        specification.setScreenSize(createProductDto.getScreenSize());
        specification.setRam(createProductDto.getRam());
        specification.setProtection(createProductDto.getProtection());

        speService.save(specification);
        product.setSpecification(specification);

        productService.save(product);

        return "redirect:/admin/products";
    }
    //view
    @GetMapping("/views/{id}")
    public String viewProduct(@PathVariable("id") int id, Model model) {
        Product product = productService.findById(id);
        ViewProductDto viewProductDto = new ViewProductDto();
        viewProductDto.setAvatar(product.getAvatar());
        viewProductDto.setName(product.getName());
        viewProductDto.setPrice(product.getPrice());
        viewProductDto.setShortDesc(product.getShortDesc());
        viewProductDto.setSold(product.getSold());
        viewProductDto.setQuantity(product.getQuantity());
        model.addAttribute("product", viewProductDto);
        return "admin/products/view";
    }
    //update
    @GetMapping("/updates/{id}")
    public String updateProductPage(@PathVariable("id") int id, Model model) {
        Product product = productService.findById(id);
        UpdateProductDto updateProductDto = new UpdateProductDto();
        updateProductDto.setAvatar(product.getAvatar());
        updateProductDto.setId(product.getId());
        updateProductDto.setPrice(product.getPrice());
        updateProductDto.setShortDesc(product.getShortDesc());
        updateProductDto.setName(product.getName());
        updateProductDto.setQuantity(product.getQuantity());
        updateProductDto.setDetailDesc(product.getDetailDesc());
        updateProductDto.setDiscount(product.getDiscount());
        updateProductDto.setFeatured(product.getFeatured());
        model.addAttribute("updateProduct", updateProductDto);
        return "admin/products/update";
    }
    @PostMapping("/update")
    public String updateProduct(@ModelAttribute("updateProduct") UpdateProductDto updateProductDto,  @RequestParam("nhatminhFile") MultipartFile file) {
        String avatar = uploadService.handleSaveUploadFile("product", file);
        Product product = productService.findById(updateProductDto.getId());
        product.setAvatar(avatar);
        product.setName(updateProductDto.getName());
        product.setPrice(updateProductDto.getPrice());
        product.setDetailDesc(updateProductDto.getDetailDesc());
        product.setShortDesc(updateProductDto.getShortDesc());
        product.setQuantity(updateProductDto.getQuantity());
        product.setFeatured(updateProductDto.getFeatured());
        product.setDiscount(updateProductDto.getDiscount());
        productService.save(product);
        return "redirect:/admin/products";
    }

    @GetMapping("/deletes/{id}")
    public String deleteProduct(@PathVariable("id") int id) {
        productService.deleteProductById(id);
        return "redirect:/admin/products";
    }
}
