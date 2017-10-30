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
            <button id="loan_info" type="button" style="width: 220px;height: 35px;font-size: medium;" onclick="window.location.href='/bank/loan_info'">借款信息</button>
            <button id="pay_record" type="button" style="width: 220px;height: 35px;font-size: medium;align-content: flex-start" >还款记录</button>
            <button id="exit" type="button" style="width: 220px;height: 35px;font-size: medium;align-content: flex-start" onclick="window.location.href='/bank/test'">退出</button>
        </div>
    </div>
</div>

<div id="pay_record_page" data-options="region:'center',title:'还款记录',iconCls:'icon-ok'" >
    <table class="easyui-datagrid" title="详细信息如下" style="width:700px;height:250px"
           data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
        <thead>
        <tr>
            <th data-options="field:'pay_no',width:80">还款次序</th>
            <th data-options="field:'pay_time',width:100">还款时间</th>
            <th data-options="field:'pay_money',width:80,align:'right'">还款金额</th>
        </tr>
        </thead>
    </table>
</div>
</body>
</html>