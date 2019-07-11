package com.aishang.service;

import com.aishang.po.User;

public interface IUserService {

    User selectUserByUserName(String userName);

    void addUser(User user);

    User doLogin(User user);
}
