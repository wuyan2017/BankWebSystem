package com.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wuyan on 2017/10/19.
 */
@Controller
public class PlanController {
    @RequestMapping(value = "pay_plan")
    public String pay_lan(){
        return "pay_plan";
    }
    @RequestMapping("RetailsPlan_page")
    public  String RetailsPlan(){
        return  "RetailsPayPlan";
    }
    @RequestMapping("BeginPay_page")
    public  String BeginPlan(){
        return  "BeginPay";
    }
}
