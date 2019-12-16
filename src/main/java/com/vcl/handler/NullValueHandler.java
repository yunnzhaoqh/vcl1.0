package com.vcl.handler;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @Author: Lihao
 * @Date: 2018/9/25 15:33
 */
public class NullValueHandler implements TypeHandler<Object> {

    @Override
    public void setParameter(PreparedStatement preparedStatement, int i, Object o, JdbcType jdbcType) throws SQLException {
        if (o == null) {
            if (jdbcType == JdbcType.VARCHAR) {
                preparedStatement.setString(i, "");
            } else if (jdbcType == JdbcType.INTEGER) {
                preparedStatement.setInt(i,0);
            }
        } else {
            preparedStatement.setObject(i,o);
        }
    }

    @Override
    public Object getResult(ResultSet resultSet, String s) throws SQLException {
        return resultSet.getString(s);
    }

    @Override
    public Object getResult(ResultSet resultSet, int i) throws SQLException {
        return resultSet.getString(i);
    }

    @Override
    public Object getResult(CallableStatement callableStatement, int i) throws SQLException {
        return callableStatement.getString(i);
    }
}
