package com.datou.dao;

import com.datou.model.Users;
import java.util.List;


public interface UsersMapper {

    int insert(Users record);


    Users selectByPrimaryKey(Integer uid);


    Users login(Users user);

    List<Users> userList();

    Integer getUserCount();
}