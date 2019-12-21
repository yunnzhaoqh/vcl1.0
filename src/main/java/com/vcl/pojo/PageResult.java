package com.vcl.pojo;

import java.util.List;

public class PageResult<T> {
    
	private Long count;
	private Long page;
	private Long size;
    private List<T> data;
    private int code;
    private String msg;



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
