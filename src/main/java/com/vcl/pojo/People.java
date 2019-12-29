package com.vcl.pojo;


public class People {

  private long id;
  private String name;
  private String gender;
  private long age;
  private String path;
  private long type;
  private String createtime;
  private long status;
  private String duty;
  private String phone;
  private String introUrl;


  public long getId() {
    return id;
  }

  public void setId(long id) {
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


  public long getAge() {
    return age;
  }

  public void setAge(long age) {
    this.age = age;
  }


  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }


  public long getType() {
    return type;
  }

  public void setType(long type) {
    this.type = type;
  }


  public String getCreatetime() {
    return createtime;
  }

  public void setCreatetime(String createtime) {
    this.createtime = createtime;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }


  public String getDuty() {
    return duty;
  }

  public void setDuty(String duty) {
    this.duty = duty;
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
