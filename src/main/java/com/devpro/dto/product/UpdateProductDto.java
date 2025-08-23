package com.devpro.dto.product;

import lombok.*;

@Data
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UpdateProductDto {
    private Integer id;
    private String name;
    private Double price;
    private String shortDesc;
    private String detailDesc;
    private Integer quantity;
    private String avatar;
}
