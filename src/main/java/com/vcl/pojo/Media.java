package com.vcl.pojo;


public class Media {

  private long id;
  private String title;
  private java.sql.Timestamp releaseDate;
  private String content;
  private java.sql.Timestamp createtime;
  private long status;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public java.sql.Timestamp getReleaseDate() {
    return releaseDate;
  }

  public void setReleaseDate(java.sql.Timestamp releaseDate) {
    this.releaseDate = releaseDate;
  }


  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }


  public java.sql.Timestamp getCreatetime() {
    return createtime;
  }

  public void setCreatetime(java.sql.Timestamp createtime) {
    this.createtime = createtime;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }

}
