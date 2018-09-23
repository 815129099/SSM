package com.smart.service;


import com.smart.bean.Allege;
import com.smart.bean.Record;
import com.smart.bean.Student;

import java.util.List;
import java.util.Map;

public interface StudentService {

    //填写基本信息
    public Boolean comBasicInfo(Student student);
    //填写教育信息
    public Boolean comEduInfo(Student student);
    //填写自我介绍
    public Boolean comDescribe(Student student);
    //填写期望工作
    public Boolean comExpect(Student student);
    //通过邮箱获取student
    public Student getStuByEmail(String email);
    //判断信息是否存在
    public Boolean isStu(String email);
    //报名
    public Boolean stuApply(String email,int id);
    //判断是否报名
    public Boolean isApply(String email,int id);
    //显示报名记录
    public List<Map<String,Object>> showRecord(String email);
    //检查学生信息是否完整
    public String checkStudent(String email);
    //评价公司
    public Boolean appCom(Record record);
    //删除
    public Boolean stuDel(int id);
    //学生申述
    public Boolean Allege(Allege allege);
    //显示学生申述
    public List<Allege> showAllege(String email);



}
