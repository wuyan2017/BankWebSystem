package com.admin;

import com.service.Dao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import static com.service.InfoUtils.benxihe;
import static com.service.InfoUtils.loanNumber;

/**
 * Created by wuyan on 2017/10/30.
 */
@Controller
public class PaySuccess {
    Statement statement=null;
    @RequestMapping(value = "/pay_success" ,method = RequestMethod.POST)
    public String loan_success(HttpServletRequest request){
        int pay_money=Integer.valueOf(request.getParameter("pay_money"));
        System.out.println(pay_money);
        float v_guazhang=pay_money-benxihe;
        System.out.println(benxihe);
        try
        {
            Connection conn = Dao.getConnection();
            statement = conn.createStatement();
            if(pay_money<benxihe){
                String sql="UPDATE test_wuyan SET guazhang='"+pay_money+"',pay_time='2017-10-30'";
                statement.executeUpdate(sql);
            }else if(pay_money>benxihe&&pay_money<2*benxihe){
                String sql="UPDATE test_wuyan SET guazhang='0',mf1='0',guazhang2='"+v_guazhang+"',pay_time='2017-10-30'";
                statement.executeUpdate(sql);
            }else if(pay_money>2*benxihe&&pay_money<3*benxihe){
                String sql="UPDATE test_wuyan SET guazhang='0',mf1='0',guazhang2='0',mf2='0',guazhang3='"+v_guazhang+"'pay_time='2017-10-30'";
                statement.executeUpdate(sql);
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库连接出错");
        }
        return "paySuccess";
    }
}
