package com.vcl.pojo;


public class Project {

  private Long id;
  private String main_title;
  private String subtitle;
  private String share_people;
  private String share_shcool;
  private String content;
  private long type;
  private String createtime;
  private long status;


  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getMain_title() {
    return main_title;
  }

  public void setMain_title(String main_title) {
    this.main_title = main_title;
  }

  public String getSubtitle() {
    return subtitle;
  }

  public void setSubtitle(String subtitle) {
    this.subtitle = subtitle;
  }

  public String getShare_people() {
    return share_people;
  }

  public void setShare_people(String share_people) {
    this.share_people = share_people;
  }

  public String getShare_shcool() {
    return share_shcool;
  }

  public void setShare_shcool(String share_shcool) {
    this.share_shcool = share_shcool;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
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

}
