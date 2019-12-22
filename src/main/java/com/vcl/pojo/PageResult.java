package com.vcl.pojo;

import java.util.List;

public class PageResult<T> {
    
	private Long count;
	private Long page;
	private Long size;
    private List<T> data;
    private int code;
    private String msg;

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Long getPage() {
        return page;
    }

    public void setPage(Long page) {
        this.page = page;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public PageResult(Long count, List<T> data) {
        this.count = count;
        this.data = data;
    }

    public PageResult(Long count, List<T> data, int code, String msg) {
        this.count = count;
        this.data = data;
        this.code = code;
        this.msg = msg;
    }
}
