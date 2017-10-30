package com.service;

import com.service.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by wuyan on 2017/10/18.
 */
public class LoginCheck {
    static String name;
    public static boolean check(String username,String password)
    {
        try
        {
            Connection conn = Dao.getConnection();
            PreparedStatement p = conn.prepareStatement("select * from test_wuyan where username =? and password = ?");
            p.setString(1, username);
            p.setString(2, password);
            name=username;
            System.out.println(name);
            ResultSet rs = p.executeQuery();
            while(rs.next())
            {

                Dao.close(rs, p, conn);
                return true;
            }
            Dao.close(rs, p, conn);

        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库连接出错");
        }
        return false;
    }
}
