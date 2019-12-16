package com.vcl.pojo;

import java.util.List;

public class PageResult<T> {
    
	private Long total;
	private Long page;
	private Long size;
    private List<T> rows;

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
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

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	public PageResult(Long total, List<T> rows) {
		this.total = total;
		this.rows = rows;
	}
}
