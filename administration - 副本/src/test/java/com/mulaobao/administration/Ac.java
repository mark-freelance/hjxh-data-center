package com.mulaobao.administration;

import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

public class Ac {

    @Test
    public void show(){
        ArrayList<String> strings = new ArrayList<>();
        strings.add("1");
        strings.add("2");
        strings.add("3");
        strings.add("4");

        List<String> list = strings.subList(1, 3);
        for (int i = 0;i<list.size();i++){
            System.out.println(list.get(i));
        }

    }
}
