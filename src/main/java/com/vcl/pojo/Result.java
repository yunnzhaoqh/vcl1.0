package com.vcl.pojo;

import java.util.List;

public class Result {
    private boolean success;
    private String message;
    private Object Obj;


    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getObj() {
        return Obj;
    }

    public void setObj(Object obj) {
        Obj = obj;
    }

    public Result(boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    public Result(boolean success, String message, Object obj) {
        this.success = success;
        this.message = message;
        Obj = obj;
    }

    @Override
    public String toString() {
        return "Result{" +
                "success=" + success +
                ", message='" + message + '\'' +
                ", Obj=" + Obj +
                '}';
    }
}
