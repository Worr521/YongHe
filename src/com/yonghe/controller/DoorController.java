package com.yonghe.controller;

import com.yonghe.service.DoorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @outhor moke
 * @date 2019-12-10
 */
@Controller
public class DoorController {
    @Autowired
    private DoorService doorService = null;

    @RequestMapping("door_add.action")
    public void addDoor(){
        System.out.println("增加门店成功");
    }

}
