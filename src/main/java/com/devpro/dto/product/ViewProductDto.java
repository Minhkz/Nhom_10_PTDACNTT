package com.devpro.dto.product;

import com.devpro.models.Specification;
import lombok.*;

@Data
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ViewProductDto {
    private String name;
    private Double price;
    private String shortDesc;
    private Integer quantity;
    private Integer sold;
    private String avatar;
}
