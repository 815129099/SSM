package com.smart.service;


import com.smart.bean.*;

import java.util.List;
import java.util.Map;

public interface CompanyService {
    //完善企业信息
    public Boolean CompleteCo(Company company);
    //获取企业信息
    public Company Display(String email);
    //编辑公司介绍
    public Company UpdateTem(Company company);
    //编辑公司负责人
    public Company UpdateMe(Company company);
    //编辑公司基本信息
    public Company UpdateUrl(Company company);
    //编辑公司名称
    public Company UpdateName(Company company);
    //判断公司名称是否已存在
    public Boolean isName(String name);
    //判断兼职名称是否已存在
    public Boolean isJobName(String jobName,String email);
    public Boolean isJob(Resume resume);
    //完善兼职信息
    public Boolean comJob(Resume resume);
    //获取兼职信息
    public List<Resume> disResume(String email);
    //获取所以有效兼职信息
    public List<Resume> allResume();
    //通过名称获取兼职
    public List<Resume> findResume(String jobName);
    //下线兼职
    public Boolean downResume(int id);
    //上线兼职
    public Boolean upResume(int id);
    //删除兼职
    public Boolean delResume(int id);
    //通过ID获取兼职信息
    public Resume getResumeById(int id);
    //修改兼职
    public Boolean editJob(Resume resume);
    //验证密码
    public Boolean verPwd(String email,String password);
    //修改密码
    public Boolean editPwd(User user);
    //显示报名
    public List<Map<String,Object>> showAp(String email);
    //通过
    public Boolean passApply(int id);
    //不通过
    public Boolean unPassApply(int id);
    //删除
    public Boolean delApply(int id);
    //完成
    public Boolean comApply(int id);
    public Student getStudent(int id);
    //验证公司系信息是否完善
    public String checkCompany(String email);
    //评价学生
    public Boolean appStu(Record record);
    //公司申述
    public Boolean Allege(Allege allege);
    //显示申述
    public List<Allege> showAllege(String email);


}
