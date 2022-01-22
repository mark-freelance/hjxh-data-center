package com.mulaobao.administration.temporary;

import lombok.Data;

import java.util.List;

@Data
public class Productlx {
    private String name;
    private String id;
    private String fid;
    private String ffid;
    private int number;
    private List<Productlx> children;
}
