package com.vcl.pojo;


public class Banner {

  private Long id;
  private String bannerImg;
  private String bannerTitleContext;
  private String bannerTitleIntro;
  private Long status;
  private String createTime;
  private String bannerUrl;
  private Long type;

  public String getBannerUrl() {
    return bannerUrl;
  }

  public void setBannerUrl(String bannerUrl) {
    this.bannerUrl = bannerUrl;
  }

  public Long getType() {
    return type;
  }

  public void setType(Long type) {
    this.type = type;
  }

  @Override
  public String toString() {
    return "Banner{" +
            "id=" + id +
            ", bannerImg='" + bannerImg + '\'' +
            ", bannerTitleContext='" + bannerTitleContext + '\'' +
            ", bannerTitleIntro='" + bannerTitleIntro + '\'' +
            ", status=" + status +
            ", createTime='" + createTime + '\'' +
            ", bannerUrl='" + bannerUrl + '\'' +
            ", type=" + type +
            '}';
  }

  public Banner() {
  }

  public Banner(Long id, String bannerImg, String bannerTitleContext, String bannerTitleIntro, long status, String createTime) {
    this.id = id;
    this.bannerImg = bannerImg;
    this.bannerTitleContext = bannerTitleContext;
    this.bannerTitleIntro = bannerTitleIntro;
    this.status = status;
    this.createTime = createTime;
  }

  public Banner(Long id, String bannerImg, String bannerTitleContext, String bannerTitleIntro, long status, String createTime, String bannerUrl, Long type) {
    this.id = id;
    this.bannerImg = bannerImg;
    this.bannerTitleContext = bannerTitleContext;
    this.bannerTitleIntro = bannerTitleIntro;
    this.status = status;
    this.createTime = createTime;
    this.bannerUrl = bannerUrl;
    this.type = type;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }


  public String getBannerImg() {
    return bannerImg;
  }

  public void setBannerImg(String bannerImg) {
    this.bannerImg = bannerImg;
  }


  public String getBannerTitleContext() {
    return bannerTitleContext;
  }

  public void setBannerTitleContext(String bannerTitleContext) {
    this.bannerTitleContext = bannerTitleContext;
  }


  public String getBannerTitleIntro() {
    return bannerTitleIntro;
  }

  public void setBannerTitleIntro(String bannerTitleIntro) {
    this.bannerTitleIntro = bannerTitleIntro;
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
