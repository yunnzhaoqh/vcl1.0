package com.vcl.pojo;


/**
 *
 */
public class Intro {

  private String img;
  private String addr;
  private String peopleName;
  private String title;
  private String subhead;
  private String context;
  private long id;
  private long status;
  private String createTime;
  private String duty;

  public String getDuty() {
    return duty;
  }

  public void setDuty(String duty) {
    this.duty = duty;
  }

  @Override
  public String toString() {
    return "Intro{" +
            "img='" + img + '\'' +
            ", addr='" + addr + '\'' +
            ", peopleName='" + peopleName + '\'' +
            ", title='" + title + '\'' +
            ", subhead='" + subhead + '\'' +
            ", context='" + context + '\'' +
            ", id=" + id +
            ", status=" + status +
            ", createTime='" + createTime + '\'' +
            '}';
  }

  public Intro(String img, String addr, String peopleName, String title, String subhead, String context, long id, long status, String createTime) {
    this.img = img;
    this.addr = addr;
    this.peopleName = peopleName;
    this.title = title;
    this.subhead = subhead;
    this.context = context;
    this.id = id;
    this.status = status;
    this.createTime = createTime;
  }

  public Intro() {
  }

  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }


  public String getAddr() {
    return addr;
  }

  public void setAddr(String addr) {
    this.addr = addr;
  }


  public String getPeopleName() {
    return peopleName;
  }

  public void setPeopleName(String peopleName) {
    this.peopleName = peopleName;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getSubhead() {
    return subhead;
  }

  public void setSubhead(String subhead) {
    this.subhead = subhead;
  }


  public String getContext() {
    return context;
  }

  public void setContext(String context) {
    this.context = context;
  }


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
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
