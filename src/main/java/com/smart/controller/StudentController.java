package com.smart.controller;

import com.smart.bean.Allege;
import com.smart.bean.Record;
import com.smart.bean.Student;
import com.smart.exception.CustomException;
import com.smart.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/comBasicInfo")
    @ResponseBody
    public Map<String,Object> comBasicInfo(Student student)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = studentService.comBasicInfo(student);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    @RequestMapping(value = "/comEduInfo")
    @ResponseBody
    public Map<String,Object> comEduInfo(Student student)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = studentService.comEduInfo(student);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    @RequestMapping(value = "/comDescribe")
    @ResponseBody
    public Map<String,Object> comDescribe(Student student)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = studentService.comDescribe(student);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    @RequestMapping(value = "/comExpect")
    @ResponseBody
    public Map<String,Object> comExpect(Student student)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            System.out.println(student.getEmail());
            Boolean result = studentService.comExpect(student);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    @RequestMapping(value = "/showStu")
    @ResponseBody
    public Map<String,Object> showStu(String email)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Student student = studentService.getStuByEmail(email);
            map.put("student",student);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //判断学生信息是否存在
    @RequestMapping(value = "/isStu")
    @ResponseBody
    public Map<String,Object> isStu(String email)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = studentService.isStu(email);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //预览简历
    @RequestMapping(value = "/preview")
    public ModelAndView preview(@RequestParam String email)throws Exception{
        ModelAndView mav = new ModelAndView("preview");
        try{
            Student student = null;
            if(email!=null || email.length()>0){
                student = studentService.getStuByEmail(email);
            }
            mav.addObject("student",student);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return mav;
    }

    //报名
    @RequestMapping(value = "/stuApply")
    @ResponseBody
    public Map<String,Object> stuApply(@RequestParam String email,@RequestParam int id)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = studentService.stuApply(email,id);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }


    //是否报名
    @RequestMapping(value = "/isApply")
    @ResponseBody
    public Map<String,Object> isApply(@RequestParam String email,@RequestParam int id)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = studentService.isApply(email,id);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //显示报名记录
    @RequestMapping(value = "/showRecord")
    @ResponseBody
    public Map<String,Object> showRecord(@RequestParam String email)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            List<Map<String,Object>> list = studentService.showRecord(email);
            List<Allege> list1 = studentService.showAllege(email);
            map.put("recordList",list);
            map.put("allegeList",list1);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //检查学生信息是否完整
    @RequestMapping(value = "/checkStudent")
    @ResponseBody
    public Map<String,Object> checkStudent(@RequestParam String email)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            String tip ="";
            if(studentService.checkStudent(email)!=null ||studentService.checkStudent(email).length()>0) {
                tip = studentService.checkStudent(email);
            }
            map.put("tip",tip);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //评价公司
    @RequestMapping(value = "/appraiseCom")
    @ResponseBody
    public Map<String,Object> appraiseCom(Record record)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        Boolean result = studentService.appCom(record);
        map.put("tip",result);
        return map;
    }

    //删除兼职信息
    @RequestMapping(value = "/stuDel")
    @ResponseBody
    public Boolean stuDel(int id) throws Exception {
        Boolean result = false;
        try {
            result = studentService.stuDel(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //学生申述
    @RequestMapping(value = "/stuAllege")
    @ResponseBody
    public Boolean stuAllege(Allege allege) throws Exception {
        Boolean result = false;
        try {
            result = studentService.Allege(allege);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }


    @RequestMapping(value = "/stuResume")
    public ModelAndView stuResume(){
        return new ModelAndView("stuResume");
    }

    @RequestMapping(value = "/student")
    public ModelAndView student(){
        return new ModelAndView("student");
    }

    @RequestMapping(value = "/delivery")
    public ModelAndView delivery(){
        return new ModelAndView("delivery");
    }

}
