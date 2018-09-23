package com.smart.bean;

public class Record {
    private int id;
    private String stuEmail;
    private String comEmail;
    private String jobName;
    private String applyState;
    private String applyTime;
    private String stuGrade;
    private String stuText;
    private String comGrade;
    private String comText;
    private String stuState;

    public String getStuState() {
        return stuState;
    }

    public void setStuState(String stuState) {
        this.stuState = stuState;
    }

    public String getComText() {
        return comText;
    }

    public void setComText(String comText) {
        this.comText = comText;
    }

    public String getComGrade() {
        return comGrade;
    }

    public void setComGrade(String comGrade) {
        this.comGrade = comGrade;
    }

    public String getStuText() {
        return stuText;
    }

    public void setStuText(String stuText) {
        this.stuText = stuText;
    }

    public String getStuGrade() {
        return stuGrade;
    }

    public void setStuGrade(String stuGrade) {
        this.stuGrade = stuGrade;
    }

    public String getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(String applyTime) {
        this.applyTime = applyTime;
    }

    public String getApplyId() {
        return applyId;
    }

    public void setApplyId(String applyId) {
        this.applyId = applyId;
    }

    public String getApplyState() {
        return applyState;
    }

    public void setApplyState(String applyState) {
        this.applyState = applyState;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getComEmail() {
        return comEmail;
    }

    public void setComEmail(String comEmail) {
        this.comEmail = comEmail;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String applyId;
}
