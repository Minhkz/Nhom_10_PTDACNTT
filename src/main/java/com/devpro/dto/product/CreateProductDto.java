package com.devpro.dto.product;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import lombok.*;

@Data
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CreateProductDto {
    @NotBlank(message = "Name not empty")
    private String name;
    @Positive(message = "Price must >0")
    @NotNull(message = "Price not empty")
    private Double price;
    @NotBlank(message = "Details description not empty")
    private String detailDesc;
    @NotBlank(message = "Short description not empty")
    private String shortDesc;
    @Positive(message = "Quantity must >0")
    @NotNull(message = "Quantity not empty")
    private Integer quantity;

    private String avatar;
    private Integer categoryId;
    @NotBlank(message = "Color not empty")
    private String color;

    private Integer pin;

    private String screenType;

    private Double screenSize;

    private String protection;
    private Integer ram;
    private Integer featured;
    private Integer discount;

    private String image;
}
