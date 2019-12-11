package cn.tedu.controller;

import cn.tedu.domain.User;
import cn.tedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService = null;

    @RequestMapping("/regist.action")
    public String regist(User user){
        System.out.println("UserController..regist..");
        userService.regist(user);
        return "regist";
    }
}
