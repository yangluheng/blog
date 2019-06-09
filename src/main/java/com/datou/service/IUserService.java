package com.datou.service;

import com.datou.model.Users;
import org.springframework.stereotype.Service;

import java.util.List;


public interface IUserService {
    Users selectByPrimaryKey(Integer uid);

    Users login(Users user);

    List<Users> userList();

    Integer getUserCount();
}
