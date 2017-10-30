package com.service;

import java.sql.*;

/**
 * Created by wuyan on 2017/10/18.
 */
public class Dao {
    public static Connection getConnection()
    {
        Connection conn = null;
        String url = "jdbc:mysql://192.168.1.214:3306/test";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,"root","chengce214");
        }
        catch(ClassNotFoundException e)
        {
            e.printStackTrace();
            System.out.println("数据库驱动加载出错");
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库出错");
        }
        return conn;
    }
    public static void close(ResultSet rs, PreparedStatement p, Connection conn)
    {
        try
        {
            rs.close();
            p.close();
            conn.close();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据关闭出错");
        }
    }
}
