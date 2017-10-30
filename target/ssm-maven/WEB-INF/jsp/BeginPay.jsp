<%@ page import="static com.service.InfoUtils.loanNumber" %>
<%@ page import="com.service.InfoUtils" %>
<%@ page import="static com.service.InfoUtils.total2" %>
<%@ page import="static com.service.InfoUtils.total3" %>
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
            <button id="loan_begin" type="button" style="width: 220px;height: 35px;font-size: medium;">开始借款</button>
            <button id="loan_info" type="button" style="width: 220px;height: 35px;font-size: medium;" onclick="window.location.href='/bank/loan_info'">借款信息</button>
            <button id="pay_record" type="button" style="width: 220px;height: 35px;font-size: medium;align-content: flex-start" onclick="window.location.href='/bank/pay_record'">还款记录</button>
            <button id="exit" type="button" style="width: 220px;height: 35px;font-size: medium;align-content: flex-start" onclick="window.location.href='/bank/test'">退出</button>
        </div>
    </div>
</div>


<div id="BeginPay_page" data-options="region:'center',title:'开始借款',iconCls:'icon-ok'" >
    <form class="easyui-panel" id="ff" method="post" action="${pageContext.request.contextPath}/pay_success">
        <table cellpadding="5">
            <tr>
                <td>应还金额（单位：元）:</td>
                <td><%=total/n*30*0.003+total/n%></td>
            </tr>
            <tr>
                <td>还款金额（单位：元）:</td>
                <td id="payMoney"><input  class="easyui-textbox" type="text" name="pay_money" data-options="required:true" ></input></td>
            </tr>
        </table>
    </form>
    <div style="text-align:center;padding:5px">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确定</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取消</a>
    </div>
</div>

<script>
    var payMoney=document.getElementById("payMoney").value;

    function submitForm(){
        alert(payMoney);
        $('#ff').form('submit');
       if(payMoney<<%=benxihe%>){
        alert("失败！已挂账...");
       }else if(payMoney><%=benxihe%>){
        alert("还款成功！");
       }
    }
    function clearForm(){
        $('#ff').form('clear');
    }
</script>

</body>
</html>