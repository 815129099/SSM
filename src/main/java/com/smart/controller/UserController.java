package com.smart.controller;

import com.github.pagehelper.PageInfo;
import com.smart.bean.Allege;
import com.smart.bean.Company;
import com.smart.bean.Student;
import com.smart.bean.User;
import com.smart.exception.CustomException;
import com.smart.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SessionAttributes(types={User.class,Company.class},value={"email","type"})
@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/index")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping(value="/welcome")
    public ModelAndView welcome() {
        return new ModelAndView("welcome");
    }

    @RequestMapping(value="/allegeList")
    public ModelAndView allegeList() {
        return new ModelAndView("allegeList");
    }

    @RequestMapping(value="/meList")
    public ModelAndView meList() {
        return new ModelAndView("meList");
    }

    @RequestMapping(value="/maSystem")
    public ModelAndView maSystem() {
        return new ModelAndView("maSystem");
    }

    @RequestMapping(value="/login")
    public ModelAndView Login() {
        return new ModelAndView("login");
    }

    @RequestMapping(value="/register")
    public ModelAndView Register() {
        return new ModelAndView("register");
    }

    //注册
    @RequestMapping(value="/reg")
    @ResponseBody
    public Map<String,Object> Register(User user) throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();

        boolean isSuccess = userService.Register(user);
        if(isSuccess){
            map.put("tip", "success");
        }
        else{
            map.put("tip", "error");
        }

        return map;
    }

    // 判断邮箱是否已注册
    @RequestMapping("/isEmailExist.do")
    @ResponseBody
    public Map<String, Object> isEmailExist(String email) throws Exception {
        Map<String, Object> result = new HashMap<String, Object>();
        boolean isSuccess = userService.isEmailExist(email);
        if (isSuccess) {
            result.put("tip", "success");
        } else {
            result.put("tip", "error");
        }

        return result;
    }

    // 判断用户类型
    @RequestMapping("/UserType.do")
    @ResponseBody
    public Map<String, Object> UserType(String email,String password,ModelMap modelMap) throws IOException {
        Map<String, Object> result = new HashMap<String, Object>();

        String str = userService.UserType(email,password);
        if (str!=null && str!="") {
            result.put("tip", str);
        }
        modelMap.addAttribute("email",email);
        modelMap.addAttribute("type",str);
        return result;
    }


    //显示兼职信息
    @RequestMapping(value = "/dResume")
    public ModelAndView dResume() throws Exception {
        // Map<String ,Object> map = new HashMap<String,Object>();
        //List<Resume> list = companyService.disResume(email);
        //map.put("list",list);
        ModelAndView mav = new ModelAndView("UserList");

        List<User> list = userService.listStu();
/*
        for (User u:list) {
            System.out.println(u.getType()+","+u.getPassword()+","+u.getEmail()+","+u.getId());
        } */
        mav.addObject("list",list);

        //Resume resume = list.get(0);
        // map.put("resume",resume);
        // System.out.println(resume.getJobName());
        // mav.addObject("resume",resume)
       // mav.addObject("list",bbb);
        return mav;
    }

    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session, HttpServletRequest request, HttpServletResponse response, SessionStatus sessionStatus) throws Exception{

        session.removeAttribute("email");
        session.removeAttribute("type");
        sessionStatus.setComplete();

        return "redirect:/login";
    }

    // 用户列表
    @RequestMapping("/userList")
    @ResponseBody
    public Map<String, Object> userList() throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        List<User> list = userService.listStu();
        map.put("list",list);
        return map;
    }

    //查询用户列表
    @RequestMapping("/listUser.do")
    @ResponseBody
    public Map<String,Object> listUser(User user,Integer pageNum,Integer pageSize)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            //获取分页信息
            if (pageNum == null || pageNum == 0) {
                pageNum = 1;
            }
            if (pageSize == null) {
                pageSize = 5;
            }
            if (user.getEmail() != null) {
                user.setEmail("%" + user.getEmail() + "%");
            }
            PageInfo<User> page = userService.pageUser(user, pageNum, pageSize);
            map.put("page", page);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //查询用户列表
    @RequestMapping("/listAllege.do")
    @ResponseBody
    public Map<String,Object> listAllege(Allege allege, Integer pageNum, Integer pageSize){
        Map<String,Object> map = new HashMap<String,Object>();
        //获取分页信息
        if(pageNum==null||pageNum==0){
            pageNum = 1;
        }
        if(pageSize==null){
            pageSize = 5;
        }
        if(allege.getEmail()!=null){
            allege.setEmail("%"+allege.getEmail()+"%");
        }
        PageInfo<Allege> page = userService.pageAllege(allege,pageNum,pageSize);
        map.put("page", page);
        return map;
    }

    // 删除用户
    @RequestMapping("/delUser.do")
    @ResponseBody
    public Map<String, Object> delUser(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        boolean isSuccess = false;
        isSuccess = userService.delUser(id);
        if (isSuccess) {
            map.put("tip", "success");
        } else {
            map.put("tip", "error");
        }
        return map;
    }


    //添加用户
    @RequestMapping("/addUser.do")
    @ResponseBody
    public Map<String,Object> addUser(User user) throws IOException {
        Map<String,Object> map = new HashMap<String,Object>();
        boolean isSuccess = userService.Register(user);
        if(isSuccess){
            map.put("tip", "success");
        }
        else{
            map.put("tip", "error");
        }
        return map;
    }

    // 锁定用户
    @RequestMapping("/lockUser.do")
    @ResponseBody
    public Map<String, Object> lockUser(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        boolean isSuccess = false;
        isSuccess = userService.lockUser(id);
        if (isSuccess) {
            map.put("tip", "success");
        } else {
            map.put("tip", "error");
        }
        return map;
    }

    // 锁定用户
    @RequestMapping("/clearUser.do")
    @ResponseBody
    public Map<String, Object> clearUser(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        boolean isSuccess = false;
        isSuccess = userService.clearUser(id);
        if (isSuccess) {
            map.put("tip", "success");
        } else {
            map.put("tip", "error");
        }
        return map;
    }

    //管理员重置密码
    @RequestMapping("/resetPassword.do")
    @ResponseBody
    public Map<String,Object> resetPassword(User user){
        Map<String,Object> map = new HashMap<String,Object>();
        boolean isSuccess = userService.resetPassword(user);
        if(isSuccess){
            map.put("tip", "success");
        }
        else{
            map.put("tip", "error");
        }
        return map;
    }

    @RequestMapping(value="/pre")
    public ModelAndView pre(int id) {
        ModelAndView mav = new ModelAndView();
        Company company = null;
        Student student = null;
        User user = userService.getUserById(id);
        if(StringUtils.isEmpty(user)){
            user = userService.getUserById(id);
        }else{
            if(user.getType().equals("company")){
                company = userService.getCom(user.getEmail());
                mav.setViewName("previewCom");
                mav.addObject("company",company);
            }else if(user.getType().equals("student")){
                student = userService.getStu(user.getEmail());
                mav.setViewName("preview");
                mav.addObject("student",student);
            }
        }
        return mav;
    }


    // 获取申述
    @RequestMapping("/getAllegeById")
    @ResponseBody
    public Map<String, Object> getAllegeById(int id) {
        Map<String, Object> map = new HashMap<String, Object>();
        Allege allege = userService.getAllegeById(id);
        if(!StringUtils.isEmpty(allege)){
            map.put("Allege",allege);
        }
        return map;
    }

    // 处理申述
    @RequestMapping("/dealAllege")
    @ResponseBody
    public Map<String, Object> dealAllege(Allege allege) {
        Map<String, Object> map = new HashMap<String, Object>();
        Boolean result = false;
        result = userService.dealAllege(allege);
        map.put("tip",result);
        return map;
    }

    // 删除用户
    @RequestMapping("/delAllege.do")
    @ResponseBody
    public Map<String, Object> delAllege(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        boolean isSuccess = false;
        isSuccess = userService.delAllege(id);
        map.put("tip", isSuccess);
        return map;
    }

    // 重置密码
    @RequestMapping("/resetPassword")
    @ResponseBody
    public Map<String, Object> resetPassword(String email,String phone,String password) {
        Map<String, Object> map = new HashMap<String, Object>();
        String str = "";
        str = userService.resetPassword(email,phone,password);
        map.put("tip", str);
        return map;
    }


}
