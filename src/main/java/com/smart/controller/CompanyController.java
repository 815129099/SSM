package com.smart.controller;

import com.smart.bean.*;
import com.smart.exception.CustomException;
import com.smart.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SessionAttributes(types={Resume.class,Company.class},value={"email","type"})
@Controller
@RequestMapping("/")
public class CompanyController {
    @Autowired
    private CompanyService companyService;

    @RequestMapping(value="/completeCom")
    @ResponseBody
    public Map<String,Object> CompleteCom(Company company,ModelMap modelMap) throws Exception {
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            Boolean isSuccess = companyService.CompleteCo(company);
            if(isSuccess){
                map.put("tip","success");
                modelMap.addAttribute("type","company");
            }else {
                map.put("tip","error");
            }
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    @RequestMapping(value = "/display")
    @ResponseBody
    public Map<String,Object> Display(String email) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Company company = companyService.Display(email);
            List<Map<String,Object>> list = companyService.showAp(email);
            for(Map<String,Object> m:list){
                if(StringUtils.isEmpty(m.get("comGrade"))){

                }else{
                    System.out.println(m.get("comGrade"));
                }
            }
            map.put("company",company);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //编辑公司介绍
    @RequestMapping(value = "/updateTem")
    @ResponseBody
    public Map<String,Object> UpdateTem(Company company) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Company company1 = companyService.UpdateTem(company);
            map.put("company",company1);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //编辑公司介绍
    @RequestMapping(value = "/updateMe")
    @ResponseBody
    public Map<String,Object> UpdateMe(Company company) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Company company1 = companyService.UpdateMe(company);
            map.put("company",company1);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //编辑公司基本信息
    @RequestMapping(value = "/updateUrl")
    @ResponseBody
    public Map<String,Object> UpdateUrl(Company company) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Company company1 = companyService.UpdateUrl(company);
            map.put("company",company1);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }


    //编辑公司名称
    @RequestMapping(value = "/updateName")
    @ResponseBody
    public Map<String,Object> UpdateName(Company company) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            System.out.println(company.getEmail());
            Company company1 = companyService.UpdateName(company);
            map.put("company",company1);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }


    //判断公司名称是否已存在
    @RequestMapping(value = "/isName")
    @ResponseBody
    public Map<String,Object> isName(String name) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Boolean isSuccess = companyService.isName(name);
            map.put("tip",isSuccess);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //判断兼职名称是否已存在
    @RequestMapping(value = "/isJobName")
    @ResponseBody
    public Map<String,Object> isJobName(String jobName,String email) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Boolean isSuccess = companyService.isJobName(jobName,email);
            map.put("tip",isSuccess);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //完善兼职信息
    @RequestMapping(value = "/comJob")
    @ResponseBody
    public Map<String,Object> comJob(Resume resume) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = false;
            if(companyService.isJob(resume)){
                result = companyService.editJob(resume);
            }else {
                result = companyService.comJob(resume);
            }
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }



    //通过email获取兼职信息
    @RequestMapping(value = "/disResume")
    @ResponseBody
    public Map<String,Object> disResume(String email) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            List<Resume> reList = companyService.disResume(email);
            map.put("reList",reList);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //获取所以有效兼职
    @RequestMapping(value = "/allResume")
    @ResponseBody
    public Map<String,Object> allResume() throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            List<Resume> reList = companyService.allResume();
            map.put("list",reList);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //通过名称获取兼职
    @RequestMapping(value = "/findResumeByName")
    @ResponseBody
    public Map<String,Object> findResume(String jobName) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            List<Resume> reList = companyService.findResume(jobName);
            map.put("list",reList);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //下线兼职信息
    @RequestMapping(value = "/downResume")
    @ResponseBody
    public Boolean downResume(int id,String email) throws Exception {
        Boolean result = false;
        try{
            result = companyService.downResume(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //上线兼职信息
    @RequestMapping(value = "/upResume")
    @ResponseBody
    public Boolean upResume(int id,String email) throws Exception {
        Boolean result = false;
        try{
            result = companyService.upResume(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //删除兼职信息
    @RequestMapping(value = "/delResume")
    @ResponseBody
    public Boolean delResume(int id,String email) throws Exception {
        Boolean result = false;
        try {
            result = companyService.delResume(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //通过ID获取兼职信息
    @RequestMapping(value = "/getResumeById")
    @ResponseBody
    public Map<String,Object> getResumeById(int id) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Resume resume = companyService.getResumeById(id);
            map.put("resume",resume);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //验证用户密码
    @RequestMapping(value = "/verPassword")
    @ResponseBody
    public Map<String,Object> verPwd(String email,String password) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = companyService.verPwd(email,password);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //修改用户密码
    @RequestMapping(value = "/editPassword")
    @ResponseBody
    public Map<String,Object> editPwd(User user) throws Exception {
        Map<String ,Object> map = new HashMap<String,Object>();
        try{
            Boolean result = companyService.editPwd(user);
            map.put("tip",result);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    @RequestMapping(value = "/applyRe")
    public ModelAndView applyRe(@RequestParam int id) throws Exception{
        ModelAndView mav = new ModelAndView("apply");
        try{
            Resume resume = companyService.getResumeById(id);
            Company company = null;
            if(resume.getEmail()!=null || resume.getEmail().length()>0){
                company = companyService.Display(resume.getEmail());
            }
            mav.addObject("company",company);
            mav.addObject("resume",resume);

        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return mav;
    }

    //显示报名记录
    @RequestMapping(value = "/showAp")
    @ResponseBody
    public Map<String,Object> showAp(@RequestParam String email) throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            List<Map<String,Object>> list = companyService.showAp(email);
            List<Allege> list1 = companyService.showAllege(email);
            map.put("applyList",list);
            map.put("showAllege",list1);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }

    //通过
    @RequestMapping(value = "/passApply")
    @ResponseBody
    public Boolean passApply(int id) throws Exception {
        Boolean result = false;
        try{
            result = companyService.passApply(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //不通过
    @RequestMapping(value = "/unPassApply")
    @ResponseBody
    public Boolean unPassApply(int id) throws Exception {
        Boolean result = false;
        try{
            result = companyService.unPassApply(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //不通过
    @RequestMapping(value = "/delApply")
    @ResponseBody
    public Boolean delApply(int id) throws Exception {
        Boolean result = false;
        try{
            result = companyService.delApply(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //完成
    @RequestMapping(value = "/comApply")
    @ResponseBody
    public Boolean comApply(int id) throws Exception {
        Boolean result = false;
        try{
            result = companyService.comApply(id);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }

    //验证公司信息是否完善
    @RequestMapping(value = "/checkCompany")
    @ResponseBody
    public Map<String,Object> checkCompany(@RequestParam String email)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try{
            String tip ="";
            if(companyService.checkCompany(email)!=null || companyService.checkCompany(email).length()>0) {
                tip = companyService.checkCompany(email);
            }
            map.put("tip",tip);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return map;
    }


    //评价学生
    @RequestMapping(value = "/appraiseStu")
    @ResponseBody
    public Map<String,Object> appraiseStu(Record record)throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        System.out.println(record.getId()+","+record.getStuGrade()+","+record.getStuText());
        Boolean result = companyService.appStu(record);
        map.put("tip",result);
        return map;
    }

    //学生申述
    @RequestMapping(value = "/comAllege")
    @ResponseBody
    public Boolean stuAllege(Allege allege) throws Exception {
        Boolean result = false;
        try {
            result = companyService.Allege(allege);
        }catch (Exception e){
            throw new CustomException("未知错误");
        }
        return result;
    }


    /*
    //完善兼职信息
    @RequestMapping(value = "/disResume")
    public ModelAndView disResume(String email) throws IOException {
       // Map<String ,Object> map = new HashMap<String,Object>();
       // ModelAndView mav = new ModelAndView("Resume");
        ModelAndView mav = new ModelAndView("resumeList");
        System.out.println(email);
        List<Resume> reList = new ArrayList<Resume>();

            //System.out.println(email.equals("815129029@qq.com"));

           // email = "815129029@qq.com";
            reList = companyService.diResume();
            mav.addObject("reList",reList);

      //  map.put("list",list);
      // Resume resume = list.get(1);
       // map.put("resume",resume);
        System.out.println("qe");
        for (Resume r:reList) {
            System.out.println(r.getJobName());
            System.out.println("3ew");
        }

        //mav.addObject("resume",resume);
        return mav;
    }

*/


    /*
    public String index(Model model,String email) {
        List<Resume> list = companyService.disResume(email);
        model.addAttribute("list", list);
        return "UserList";
    }
*/

    @RequestMapping(value="/apply")
    public ModelAndView apply() {
        return new ModelAndView("apply");
    }

    //兼职信息
    @RequestMapping(value="/resume")
    public ModelAndView Resume() {
        return new ModelAndView("resumeList");
    }

    //发布兼职成功
    @RequestMapping(value="/createSu")
    public ModelAndView CreateSu() {
        return new ModelAndView("createSu");
    }

    //修改兼职成功
    @RequestMapping(value="/updateSu")
    public ModelAndView UpdateSu() {
        return new ModelAndView("updateSu");
    }

    //修改密码
    @RequestMapping(value="/updatePwd")
    public ModelAndView UpdatePwd() {
        return new ModelAndView("updatePwd");
    }

    @RequestMapping(value="/create")
    public ModelAndView Create() {
        return new ModelAndView("create");
    }

    //公司信息
    @RequestMapping(value="/company")
    public ModelAndView Company() {
        return new ModelAndView("company");
    }

    //公司主页
    @RequestMapping(value="/comIndex")
    public ModelAndView ComIndex() {
        return new ModelAndView("comIndex");
    }

    //完善公司信息结果
    @RequestMapping(value="/suCom")
    public ModelAndView suCom() {
        return new ModelAndView("suCom");
    }

    @RequestMapping(value="/errorCom")
    public ModelAndView errorCom() {
        return new ModelAndView("errorCom");
    }

    //完善公司信息结果
    @RequestMapping(value="/reset")
    public ModelAndView Reset() {
        return new ModelAndView("reset");
    }


}
