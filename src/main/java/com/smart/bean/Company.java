package com.smart.bean;

public class Company {
    private int id;
    private String email;
    private String name;
    private String website;
    private String city;
    private String select_industry_hidden;
    private String select_scale_hidden;
    private String temptation;
    private String principal;
    private String phone;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getWebsite() {
        return website;
    }

    public String getSelect_industry_hidden() {
        return select_industry_hidden;
    }

    public String getTemptation() {
        return temptation;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    public void setTemptation(String temptation) {
        this.temptation = temptation;
    }

    public String getSelect_scale_hidden() {
        return select_scale_hidden;

    }

    public void setSelect_scale_hidden(String select_scale_hidden) {
        this.select_scale_hidden = select_scale_hidden;
    }

    public void setSelect_industry_hidden(String select_industry_hidden) {
        this.select_industry_hidden = select_industry_hidden;
    }

    public String getCity() {
        return city;

    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getName() {
        return name;

    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setId(int id) {

        this.id = id;
    }
}
