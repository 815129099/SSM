package com.smart.dao;

import com.smart.bean.Allege;
import com.smart.bean.Company;
import com.smart.bean.Student;
import com.smart.bean.User;

import java.util.List;

public interface UserDao {
    //注册
    public void Register(User user);
    //添加企业
    public void addCompany(String email);
    //添加学生
    public void addStudent(String email);
    //通过email获取用户
    public User getEmail(String email);
    //通过email获取企业
    public Company getComByEmail(String email);
    //通过email获取学生
    public Student getStuByEmail(String email);
    public List<User> listStu();
    //用户列表
    public List<User> listUser(User user);
    //删除用户
    public void delUser(int id);
    //锁定用户
    public void lockUser(int id);
    //解锁用户
    public void clearUser(int id);
    //修改密码
    public void updatePassword(User user);
    //通过id获取用户
    public User getUserById(int id);
    //申述列表
    public List<Allege> listAllege(Allege allege);
    //通过id获取申述
    public Allege getAllegeById(int id);
    //处理申述
    public void dealAllege(Allege allege);
    //删除申述
    public void delAllege(int id);
    //修改密码
    public void resetPassword(User user);

}
