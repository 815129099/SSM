package com.smart.service;


import com.github.pagehelper.PageInfo;
import com.smart.bean.Allege;
import com.smart.bean.Company;
import com.smart.bean.Student;
import com.smart.bean.User;

import java.util.List;

public interface UserService {

    //注册
    public boolean Register(User user);
    //判断邮箱是否被注册
    public boolean isEmailExist(String email);
    //判断用户类型
    public String UserType(String email,String password);
    //通过邮箱得到Company
    public Company getCom(String email);
    public Student getStu(String email);
    public List<User> listStu();
    //查询用户列表
    public PageInfo<User> pageUser(User user, Integer pageNum, Integer pageSize);
    //查询申述列表
    public PageInfo<Allege> pageAllege(Allege allege, Integer pageNum, Integer pageSize);
    //删除用户
    public boolean delUser(int id);
    //锁定用户
    public boolean lockUser(int id);
    //解锁用户
    public boolean clearUser(int id);
    //管理员重置密码
    public boolean resetPassword(User user);
    //通过id
    public User getUserById(int id);
    //获取申述
    public Allege getAllegeById(int id);
    //处理申述
    public Boolean dealAllege(Allege allege);
    //删除申述
    public Boolean delAllege(int id);
    //重置密码
    public String resetPassword(String email,String phone,String password);


}
