package com.devpro.dto.product;

import lombok.*;

@Data
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CreateProductDto {
    private String name;
    private Double price;
    private String detailDesc;
    private String shortDesc;
    private Integer quantity;
    private String avatar;
    private Integer categoryId;
    private String color;
    private Integer pin;
    private String screenType;
    private Double screenSize;
    private String protection;
    private Integer ram;
    private Integer featured;
    private Integer discount;
}
