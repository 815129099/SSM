package com.smart.dao;

import com.smart.bean.Allege;
import com.smart.bean.Record;
import com.smart.bean.Resume;
import com.smart.bean.Student;

import java.util.List;
import java.util.Map;

public interface StudentDao {

    //填写基本信息
    public void comBasicInfo(Student student);
    //填写教育信息
    public void comEduInfo(Student student);
    //填写自我介绍
    public void comDescribe(Student student);
    //填写期望工作
    public void comExpect(Student student);
    //通过邮箱获取student
    public Student getStuByEmail(String email);
    //通过id获取resume
    public Resume getResumeById(int id);
    //报名
    public void stuApply(Map<String,Object> map);
    //通过email获取记录
    public List<String> getRecordByEmail(String email);
    //显示包名记录
    public List<Map<String,Object>> showRecord(String email);
    //评价公司
    public void appCom(Record record);
    //删除
    public void stuDel(int id);
    //学生申述
    public void makeAllege(Allege allege);
    //显示学生申述
    public List<Allege> showAllege(String email);

}
