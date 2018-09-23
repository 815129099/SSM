package com.smart.bean;

public class Resume {
    private int id;
    private String email;
    private String jobType;
    private String jobName;
    private String department;
    private String number;
    private String deRequest;
    private String detail;
    private String salary;
    private String time;
    private String state;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public int getId() {
        return id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getSalary() {

        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getDetail() {

        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getDeRequest() {
        return deRequest;
    }

    public void setDeRequest(String deRequest) {
        this.deRequest = deRequest;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }


    public void setId(int id) {
        this.id = id;
    }

}
