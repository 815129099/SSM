package com.smart.dao;

import com.smart.bean.*;

import java.util.List;
import java.util.Map;

public interface CompanyDao {
    //完善企业信息
    public void CompleteCom(Company company);
    //通过邮箱获取信息
    public Company getComByEm(String email);
    //通过邮箱编辑公司介绍
    public void UpdateTem(Company company);
    //通过邮箱编辑公司负责人
    public void UpdateMe(Company company);
    //通过邮箱编辑公司基本信息
    public void UpdateUrl(Company company);
    //通过邮箱编辑公司名称
    public void UpdateName(Company company);
    //公司名称列表
    public Company isName(String name);
    //公司名称列表
    public Resume isJobName(String jobName);
    //判断Job是否存在
    public Resume isJob(Resume resume);
    //通过email获取兼职列表
    public List<Resume> getResume(String email);
    //完善兼职信息
    public void comJob(Resume resume);
    //完善兼职信息
    public void editJob(Resume resume);
    //通过邮箱得到兼职信息
    public List<Resume> disResume(String email);
    //获取所有有效兼职
    public List<Resume> allResume();
    //通过名称获取兼职
    public List<Resume> findResume(String jobName);
    //下线兼职
    public void downResume(int id);
    //删除兼职
    public void delResume(int id);
    //上线线兼职
    public void upResume(int id);
    //通过id获取兼职
    public Resume getResumeById(int id);
    //获取用户密码
    public String getPassword(String email);
    //修改密码
    public void editPwd(User user);
    //显示报名
    public List<Map<String,Object>> showAp(String email);
    //通过
    public void passApply(int id);
    //不通过
    public void unPassApply(int id);
    //删除
    public void delApply(int id);
    //完成
    public void comApply(int id);
    //获取student信息
    public Student getStudent(int id);
    //评价学生
    public void appStu(Record record);
    //公司申述
    public void makeAllege(Allege allege);
    //显示公司申述
    public List<Allege> showAllege(String email);

}
