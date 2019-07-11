package com.aishang.dao;

import com.aishang.po.User;

public interface IUserDao {
    //根据用户名查询用户
    User selectUserByUserName(String userName);

    //添加用户
    void addUser(User user);

    //登录验证
    User doLogin(User user);
}
