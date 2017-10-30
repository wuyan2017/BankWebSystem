package com.service;

import com.entity.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by wuyan on 2017/10/19.
 */
import static com.service.LoginCheck.name;
public class InfoUtils {
    public static int loanNumber;
    public static int n,n2;
    public static int total,total2,total3,total4;
    public static int guazhang,guazhang2,guazhang3,guazhang4,guazhang5;
    public static  float benxihe;
    Statement statement=null;
    ResultSet res=null;
    public List findInfo() throws SQLException {
        List<User> list=new ArrayList<User>();
        try {
            Connection conn = Dao.getConnection();
            statement = conn.createStatement();
            String sql="select * from test_wuyan WHERE username='"+name+"'";
            res=statement.executeQuery(sql);
            while (res.next()){
                total=res.getInt("total");
                total2=res.getInt("total2");
                total3=res.getInt("total3");
                total4=res.getInt("total4");
                guazhang=res.getInt("guazhang");
                guazhang2=res.getInt("guazhang2");
                guazhang3=res.getInt("guazhang3");
                guazhang4=res.getInt("guazhang4");
                guazhang5=res.getInt("guazhang5");
                loanNumber=res.getInt("loanNumber");
                n=res.getInt("n");
                Date date=res.getDate("loan_time");
                User user=new User(total,loanNumber,n,date);
                list.add(user);
            }
            if(n!=0)
            benxihe= (float) (total/n*30*0.003+total/n);

        }catch (SQLException e) {
            e.printStackTrace();
        }finally {
            if(res!=null){
                res.close();
            }
        }
        return list;
    }
    public static int getLoanNumber() {
        return loanNumber;
    }
    public static void setLoanNumber(int num) {
        InfoUtils.loanNumber = num;
    }
}
