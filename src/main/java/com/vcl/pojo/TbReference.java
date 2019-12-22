package com.vcl.pojo;


public class TbReference {

  private Long id;
  private long peopleId;
  private String referenceName;
  private String starttime;
  private String endtime;
  private String createtime;
  private long status;


  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }


  public long getPeopleId() {
    return peopleId;
  }

  public void setPeopleId(long peopleId) {
    this.peopleId = peopleId;
  }


  public String getReferenceName() {
    return referenceName;
  }

  public void setReferenceName(String referenceName) {
    this.referenceName = referenceName;
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


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }

}
