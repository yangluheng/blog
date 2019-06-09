package com.datou.controller;

import com.datou.model.Users;
import com.datou.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private IUserService userService;

    @RequestMapping("list")
    public String useList(HttpServletRequest request, Model map) {
        List<Users> usersList = userService.userList();
        map.addAttribute("users", usersList);
        return "admin/userList";
    }

    @RequestMapping("add")
    public String addUser(HttpServletRequest request, Model map) {
//        List<Users> usersList = userService.userList();
//        map.addAttribute("users", usersList);
        return "admin/addUser";
    }

    @RequestMapping("login")
    public String login(Users users){
        Users u= userService.login(users);
        if (u!=null){
            return "redirect:/article/dashBoard";
        }else{
            return "afa";
        }

    }
}
