package com.datou.dao;

import com.datou.model.Users;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-context.xml")
public class UsersMapperTest {

    @Autowired
    private UsersMapper usersMapper;

    @Test
    public void selectByPrimaryKey() {

        Users user = usersMapper.selectByPrimaryKey(1);
        System.out.println(user);
    }

    @Test
    public void loginTest() {
        Users user = usersMapper.login(new Users("admin", "admin"));
        System.out.println(user);
    }

    @Test
    public void userListTest() {
        List<Users> usersList = usersMapper.userList();
        System.out.println(usersList);
    }


}