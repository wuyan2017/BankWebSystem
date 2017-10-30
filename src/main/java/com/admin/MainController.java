package com.admin;

import com.service.LoginCheck;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wuyan on 2017/10/17.
 */
@Controller
public class MainController {
    @RequestMapping(value = "/test")
    public String index() {
        return "login";
    }
    @RequestMapping(value = "/login.do")
    public ModelAndView check(HttpServletRequest request)
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(LoginCheck.check(username, password))
        {
            return new ModelAndView("welcome","username",username);
        }
        return new ModelAndView("error","username",username);
    }
    @RequestMapping(value = "/loan_info")
    public String loan_info(){
        return  "loan_info";
    }
    @RequestMapping(value="/pay_record")
    public String pay_record(){
        return "pay_record";
    }
    @RequestMapping(value = "/welcome")
    public String welome(){
        return "welcome";
    }

}