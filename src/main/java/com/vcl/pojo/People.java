package com.vcl.pojo;


public class People {

  private Long id;
  private String name;
  private String gender;
  private Long age;
  private String path;
  private Long type;
  private String createtime;
  private Long status;
  private String duty;
  private String dutyNum;
  private String phone;
  private String introUrl;


  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }


  public Long getAge() {
    return age;
  }

  public void setAge(Long age) {
    this.age = age;
  }


  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }


  public Long getType() {
    return type;
  }

  public void setType(Long type) {
    this.type = type;
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


  public String getDuty() {
    return duty;
  }

  public void setDuty(String duty) {
    this.duty = duty;
  }

  public String getDutyNum() {
    return dutyNum;
  }

  public void setDutyNum(String dutyNum) {
    this.dutyNum = dutyNum;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getIntroUrl() {
    return introUrl;
  }

  public void setIntroUrl(String introUrl) {
    this.introUrl = introUrl;
  }

  public People() {
  }

  @Override
  public String toString() {
    return "People{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", gender='" + gender + '\'' +
            ", age=" + age +
            ", path='" + path + '\'' +
            ", type=" + type +
            ", createtime='" + createtime + '\'' +
            ", status=" + status +
            ", duty='" + duty + '\'' +
            ", phone='" + phone + '\'' +
            ", introUrl='" + introUrl + '\'' +
            '}';
  }

  public People(long id, String name, String gender, long age, String path, long type, String createtime, long status, String duty, String phone, String introUrl) {
    this.id = id;
    this.name = name;
    this.gender = gender;
    this.age = age;
    this.path = path;
    this.type = type;
    this.createtime = createtime;
    this.status = status;
    this.duty = duty;
    this.phone = phone;
    this.introUrl = introUrl;
  }
}
