package com.vcl.pojo;


import java.util.List;
import java.util.Map;

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
  private String bg_img;
  private String project_file;
  private String fileName;
  private String fileSize;
  private List<Map> files;

  public List<Map> getFiles() {
    return files;
  }

  public void setFiles(List<Map> files) {
    this.files = files;
  }

  public Project() {
  }

  public Project(Long id,String main_title,String share_people, String subtitle, String content,String fileName, String fileSize,String project_file) {
    this.id = id;
    this.main_title = main_title;
    this.subtitle = subtitle;
    this.content = content;
    this.project_file = project_file;
    this.share_people = share_people;
    this.fileName = fileName;
    this.fileSize = fileSize;
  }

  public String getFileName() {
    return fileName;
  }

  public void setFileName(String fileName) {
    this.fileName = fileName;
  }

  public String getFileSize() {
    return fileSize;
  }

  public void setFileSize(String fileSize) {
    this.fileSize = fileSize;
  }

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

  public String getBg_img() {
    return bg_img;
  }

  public void setBg_img(String bg_img) {
    this.bg_img = bg_img;
  }

  public String getProject_file() {
    return project_file;
  }

  public void setProject_file(String project_file) {
    this.project_file = project_file;
  }
}
