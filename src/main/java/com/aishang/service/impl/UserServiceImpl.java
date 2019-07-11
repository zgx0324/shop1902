package com.aishang.service.impl;

import com.aishang.dao.IUserDao;
import com.aishang.po.User;
import com.aishang.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Resource
    private IUserDao userDao;

    @Override
    public User selectUserByUserName(String userName) {
        return userDao.selectUserByUserName(userName);
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User doLogin(User user) {

        return this.userDao.doLogin(user);
    }

}
