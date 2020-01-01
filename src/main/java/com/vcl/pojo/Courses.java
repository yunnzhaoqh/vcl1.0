package com.vcl.pojo;


public class Courses {

  private Long id;
  private String peopleId;
  private String courseName;
  private String starttime;
  private String endtime;
  private String createtime;
  private Long status;
  private String bg_img;
  private String peopleName;
  private String content;

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }


  public String getPeopleId() {
    return peopleId;
  }

  public void setPeopleId(String peopleId) {
    this.peopleId = peopleId;
  }


  public String getCourseName() {
    return courseName;
  }

  public void setCourseName(String courseName) {
    this.courseName = courseName;
  }


  public String getStarttime() {
    return starttime;
  }

  public void setStarttime(String starttime) {
    this.starttime = starttime;
  }


  public String getEndtime() {
    return endtime;
  }

  public void setEndtime(String endtime) {
    this.endtime = endtime;
  }


  public String getCreatetime() {
    return createtime;
  }

  public void setCreatetime(String createtime) {
    this.createtime = createtime;
  }


  public Long getStatus() {
    return status;
  }

  public void setStatus(Long status) {
    this.status = status;
  }

  public String getBg_img() {
    return bg_img;
  }

  public void setBg_img(String bg_img) {
    this.bg_img = bg_img;
  }

  public String getPeopleName() {
    return peopleName;
  }

  public void setPeopleName(String peopleName) {
    this.peopleName = peopleName;
  }
}
