package com.vcl.pojo;


public class Media {

  private Long id;
  private String title;
  private java.sql.Timestamp releaseDate;
  private String content;
  private String createtime;
  private long status;


  public Long getId() {
    return id;
  }

  public void setId(Long id) {
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
