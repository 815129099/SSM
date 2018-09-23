package com.smart.service;

import com.smart.bean.*;
import com.smart.dao.CompanyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class CompanyServiceImp implements CompanyService{
    @Autowired
    CompanyDao cdao;

    //完善企业信息
    public Boolean CompleteCo(Company company) {
        Boolean isSuccess = false;
        Company company1 = cdao.getComByEm(company.getEmail());
        if(company1==null){
            cdao.CompleteCom(company);
            isSuccess = true;
        }else{
            isSuccess = true;
        }
        return isSuccess;
    }

    //获取企业信息
    public Company Display(String email) {
        Company company = cdao.getComByEm(email);
        return company;
    }

    //编辑公司介绍
    public Company UpdateTem(Company company) {
        cdao.UpdateTem(company);
        Company company1 = cdao.getComByEm(company.getEmail());
        return company1;
    }

    //编辑公司负责人
    public Company UpdateMe(Company company) {
        cdao.UpdateMe(company);
        Company company1 = cdao.getComByEm(company.getEmail());
        return company1;
    }

    //编辑公司基本信息
    public Company UpdateUrl(Company company) {
        cdao.UpdateUrl(company);
        Company company1 = cdao.getComByEm(company.getEmail());
        return company1;
    }

    //编辑公司名称
    public Company UpdateName(Company company) {
        cdao.UpdateName(company);
        Company company1 = cdao.getComByEm(company.getEmail());
        return company1;
    }

    //判断公司名称是否已存在

    public Boolean isName(String name) {
        Boolean isSuccess = false;
        Company company = cdao.isName(name);
        if(company!=null){
            isSuccess = true;
        }
        return isSuccess;
    }

    //判断兼职名称是否已存在

    public Boolean isJobName(String jobName,String email) {
        Boolean isSuccess = false;
        List<Resume> list = cdao.getResume(email);
        for(Resume resume:list){
            if(resume.getJobName().equals(jobName)){
                isSuccess = true;
                break;
            }
        }
        return isSuccess;
    }

    public Boolean isJob(Resume resume) {
        Boolean result = false;
        Resume resume1 = cdao.isJob(resume);
        if(StringUtils.isEmpty(resume1)){
            result = false;
        }else {
            result = true;
        }
        return result;
    }

    //完善兼职信息
    public Boolean comJob(Resume resume) {
        Boolean isSuccess = false;
        cdao.comJob(resume);
        isSuccess = true;
        return isSuccess;
    }

    //获取兼职信息
    public List<Resume> disResume(String email) {
        List<Resume> list = cdao.disResume(email);
        return list;
    }

    //获取所有有效兼职信息
    public List<Resume> allResume() {
        List<Resume> list = cdao.allResume();
        return list;
    }

    //通过名称获取兼职
    public List<Resume> findResume(String jobName) {
        List<Resume> list = cdao.findResume(jobName);
        return list;
    }

 //下线兼职
    public Boolean downResume(int id) {
        Boolean result = false;
        cdao.downResume(id);
        result = true;
        return result;
    }

    //上线兼职
    public Boolean upResume(int id) {
        Boolean result = false;
        cdao.upResume(id);
        result = true;
        return result;
    }

    //删除兼职
    public Boolean delResume(int id) {
        Boolean result = false;
        cdao.delResume(id);
        result = true;
        return result;
    }

    //通过ID获取兼职信息
    public Resume getResumeById(int id){
        return cdao.getResumeById(id);
    }

    //修改兼职
    public Boolean editJob(Resume resume) {
        Boolean result = false;
        cdao.editJob(resume);
        result = true;
        return result;
    }

    //验证用户密码

    public Boolean verPwd(String email, String password) {
        Boolean result = false;
        String p = cdao.getPassword(email);
        if(p.equals(password)){
            result = true;
        }
        return result;
    }

    //修改用户密码

    public Boolean editPwd(User user) {
        Boolean result = false;
       cdao.editPwd(user);
            result = true;
        return result;
    }

    //显示报名
    public List<Map<String,Object>> showAp(String email) {
        return cdao.showAp(email);
    }

    //通过
    public Boolean passApply(int id) {
        Boolean result = false;
        cdao.passApply(id);
        result = true;
        return result;
    }

    //不通过
    public Boolean unPassApply(int id) {
        Boolean result = false;
        cdao.unPassApply(id);
        result = true;
        return result;
    }

    //删除
    public Boolean delApply(int id) {
        Boolean result = false;
        cdao.delApply(id);
        result = true;
        return result;
    }

    //完成
    public Boolean comApply(int id) {
        Boolean result = false;
        cdao.comApply(id);
        result = true;
        return result;
    }

    public Student getStudent(int id){
        return cdao.getStudent(id);
    }

    //验证公司信息是否完善

    public String checkCompany(String email) {
        Company company = cdao.getComByEm(email);
        String tip = "";
        if(StringUtils.isEmpty(company)){
            tip = "请填写公司信息";
        }else {
            if (company.getName() == null || company.getName().length() <= 0) {
                tip = "请填写公司名称！";
            } else if (company.getTemptation() == null || company.getTemptation().length() <= 0) {
                tip = "请添写公司介绍";
            } else if (company.getCity() == null || company.getCity().length() <= 0) {
                tip = "请添写公司所在城市";
            } else if (company.getSelect_industry_hidden() == null || company.getSelect_industry_hidden().length() <= 0) {
                tip = "请添写公司研究领域";
            } else if (company.getSelect_scale_hidden() == null || company.getSelect_scale_hidden().length() <= 0) {
                tip = "请添写公司规模";
            } else if (company.getWebsite() == null || company.getWebsite().length() <= 0) {
                tip = "请添写公司网址";
            } else if (company.getPrincipal() == null || company.getPrincipal().length() <= 0) {
                tip = "请添写公司负责人";
            } else if (company.getPhone() == null || company.getPhone().length() <= 0) {
                tip = "请添写公司负责人联系电话";
            }else{
                tip = "success";
            }
        }
        return tip;
    }

    //评价学生
    public Boolean appStu(Record record) {
        Boolean result = false;
        cdao.appStu(record);
        result = true;
        return result;
    }

    //申述
    public Boolean Allege(Allege allege) {
        Boolean result = false;
        Date dNow = new Date( );
        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd HH:mm");
        allege.setAllTime(ft.format(dNow));
        cdao.makeAllege(allege);
        result = true;
        return result;
    }

    //显示申述
    public List<Allege> showAllege(String email) {
        return cdao.showAllege(email);
    }


}
