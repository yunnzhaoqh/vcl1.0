package com.vcl.pojo;


public class Collaboration {

  private long id;
  private String img;
  private String name;
  private String addr;
  private String phone;
  private long status;
  private String createTime;
  private String icon;

  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }

  @Override
  public String toString() {
    return "Collaboration{" +
            "id=" + id +
            ", img='" + img + '\'' +
            ", name='" + name + '\'' +
            ", addr='" + addr + '\'' +
            ", phone='" + phone + '\'' +
            ", status=" + status +
            ", createTime='" + createTime + '\'' +
            '}';
  }

  public Collaboration(long id, String img, String name, String addr, String phone, long status, String createTime) {
    this.id = id;
    this.img = img;
    this.name = name;
    this.addr = addr;
    this.phone = phone;
    this.status = status;
    this.createTime = createTime;
  }

  public Collaboration() {
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getAddr() {
    return addr;
  }

  public void setAddr(String addr) {
    this.addr = addr;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }


  public String getCreateTime() {
    return createTime;
  }

  public void setCreateTime(String createTime) {
    this.createTime = createTime;
  }

}
