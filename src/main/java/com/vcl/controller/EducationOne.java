package com.vcl.controller;

/**
 * 教育明细返回结果
 */
public class EducationOne {
    private String name;
    private String date;
    private String content;

    @Override
    public String toString() {
        return "EducationOne{" +
                "name='" + name + '\'' +
                ", date='" + date + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public EducationOne() {
    }

    public EducationOne(String name, String date, String content) {
        this.name = name;
        this.date = date;
        this.content = content;
    }
}
