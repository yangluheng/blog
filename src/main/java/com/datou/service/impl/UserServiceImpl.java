package com.datou.service.impl;

import com.datou.dao.UsersMapper;
import com.datou.model.Users;
import com.datou.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private UsersMapper usersMapper;

    @Override
    public Users selectByPrimaryKey(Integer uid) {
        return usersMapper.selectByPrimaryKey(uid);
    }

    @Override
    public Users login(Users user) {
        return usersMapper.login(user);
    }

    @Override
    public List<Users> userList() {
        return usersMapper.userList();
    }

    @Override
    public Integer getUserCount() {
        return usersMapper.getUserCount();
    }
}
