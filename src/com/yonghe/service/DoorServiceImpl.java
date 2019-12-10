package com.yonghe.service;

import org.springframework.stereotype.Service;

/**
 * @outhor moke
 * @date 2019-12-10
 */
@Service
public class DoorServiceImpl implements DoorService {
    
    @Override
    public void addDoor() {
        System.out.println("service添加");
    }
}
