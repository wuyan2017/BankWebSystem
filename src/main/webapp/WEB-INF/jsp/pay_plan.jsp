<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.InfoUtils" %>
<%@ page import="static com.service.InfoUtils.loanNumber" %>
<%@ page import="static com.service.InfoUtils.total2" %>
<%@ page import="static com.service.InfoUtils.total" %>
<%@ page import="static com.service.InfoUtils.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>welcome</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',border:false" style="height: 74px; background: #75bfea; padding: 10px;font-family: 华文行楷">
    <img src="images/logo.png" /><h2>银行借贷管理系统</h2>
</div>
<div data-options="region:'south',border:false" style="height: 50px;background:#75bfea;">
    <div class="footer">欢迎进入系统</div>
    <span>@2017wuyan版权所有</span>
</div>
<div data-options="region:'west',split:false" title="系统导航"  style="width: 220px;">
    <div class="easyui-accordion" data-options="fit:true,border:false">
        <div title="贷款管理" data-options="selected:true">
            <button id="loan_begin" type="button" style="width: 220px;height: 35px;font-size: medium;" onclick="window.location.href='/bank/welcome'">开始借款</button>
            <button id="loan_info" type="button" style="width: 220px;height: 35px;font-size: medium;">借款信息</button>
            <button id="pay_record" type="button" style="width: 220px;height: 35px;font-size: medium;align-content: flex-start" onclick="window.location.href='/bank/pay_record'">还款记录</button>
            <button id="exit" type="button" style="width: 220px;height: 35px;font-size: medium;align-content: flex-start" onclick="window.location.href='/bank/test'">退出</button>
        </div>
    </div>
</div>


<div id="payPlanPage" data-options="region:'center',title:'还款计划',iconCls:'icon-ok'" >
    <table >
        <tr>
            <th data-options="field:'no',width:80">还款期数</th>
            <th data-options="field:'time',width:100">还款截止日期</th>
            <th data-options="field:'total',width:80,align:'right'">应还金额</th>
            <th data-options="field:'plan',width:80,align:'right'">点击还款</th>
        </tr>
        <%
            InfoUtils infoUtils=new InfoUtils();
            System.out.println("loan_info中的："+loanNumber);
            List<User> list=infoUtils.findInfo();
            if(loanNumber==1){
                for(User user:list)
                {
        %>
        <tr>
            <td width="100">1</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total%></td>
            <td width="100"><button onclick="window.location.href='/bank/RetailsPlan_page'">详细计划</button></td>
        </tr>
        <%}
        }else if(loanNumber==2){
            for(User user:list)
            {
        %>
        <tr>
            <td width="100">1</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total %></td>
            <td width="100"><button onclick="window.location.href='/bank/RetailsPlan_page'">详细计划</button></td>
        </tr>
        <tr>
            <td width="100">2</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total2 %></td>
            <td width="100"><button onclick="window.location.href='/bank/RetailsPlan_page'">详细计划</button></td>
        </tr>
        <%}
        }else if(loanNumber==3){
            for(User user:list)
            {
        %>
        <tr>
            <td width="100">1</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=user.getTotal()%></td>
            <td width="100"><button >点击查看</button></td>
        </tr>
        <tr>
            <td width="100">2</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total2%></td>
            <td width="100"><button >点击查看</button></td>
        </tr>
        <tr>
            <td width="100">3</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total3%></td>
            <td width="100"><button >点击查看</button></td>
        </tr>
        <%}
        }else if(loanNumber==4){
            for(User user:list)
            {
        %>
        <tr>
            <td width="100">1</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=user.getTotal()%></td>
            <td width="100"><button >点击查看</button></td>
        </tr>
        <tr>
            <td width="100">2</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total2%></td>
            <td width="100"><button >点击查看</button></td>
        </tr>
        <tr>
            <td width="100">3</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total3%></td>
            <td width="100"><button >点击查看</button></td>
        </tr>
        <tr>
            <td width="100">4</td>
            <td width="100"><%=user.getLoan_time() %></td>
            <td width="100"><%=total4%></td>
            <td width="100"><button >点击查看</button></td>
        </tr>
        <%}
        }
        %>
    </table>
</div>
</body>
</html>