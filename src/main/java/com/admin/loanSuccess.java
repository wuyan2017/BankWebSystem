package com.admin;

import com.service.Dao;
import com.service.InfoUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

import static com.service.InfoUtils.*;

/**
 * Created by wuyan on 2017/10/19.
 */
@Controller
public class loanSuccess {
    Statement statement=null;
    @RequestMapping(value = "/loan_success" ,method = RequestMethod.POST)
    public String loan_success(HttpServletRequest request){
        int total=Integer.valueOf(request.getParameter("total_money"));
        int month=Integer.valueOf(request.getParameter("month"));
        int qishu=Integer.valueOf(request.getParameter("qishu"));
        try
        {
            Connection conn = Dao.getConnection();
            statement = conn.createStatement();
            if(loanNumber==1){
                String sql="UPDATE test_wuyan SET loanNumber='"+loanNumber+"',total='"+total+"',n='"+month+"',loan_time='2017-10-19'";
                statement.executeUpdate(sql);
            }else if(loanNumber==2){
                String sql="UPDATE test_wuyan SET loanNumber='"+loanNumber+"',total2='"+total+"',n2='"+month+"',loan_time='2017-10-19'";
                statement.executeUpdate(sql);
            }else if(loanNumber==3){
                String sql="UPDATE test_wuyan SET loanNumber='"+loanNumber+"',total3='"+total+"',n3='"+month+"',loan_time='2017-10-19'";
                statement.executeUpdate(sql);
            }

        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库连接出错");
        }
        System.out.println(total);
        System.out.println(month);
        System.out.println(qishu);
        return "success";
    }
}
