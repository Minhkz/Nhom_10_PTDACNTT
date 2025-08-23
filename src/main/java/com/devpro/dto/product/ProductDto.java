package com.devpro.dto.product;

import com.devpro.models.Specification;
import lombok.*;

@Data
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto {
    private Integer id;
    private String name;
    private Specification specification;
    private Double price;
    private String shortDesc;
    private Integer quantity;
    private Integer sold;
}
