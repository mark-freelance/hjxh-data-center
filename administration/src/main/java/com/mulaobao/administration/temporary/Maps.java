package com.mulaobao.administration.temporary;


import lombok.Data;

import java.util.List;

@Data
public class Maps {
    private String value;
    private String label;
    private List<Maps> children;
}
