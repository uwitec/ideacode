﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jfgl.aspx.cs" Inherits="SouFei_jfgl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>缴费管理</title>
    <link href="~/ext/resources/css/ext-all.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <script type="text/javascript" src="../ext/adapter/ext/ext-base.js"></script>
    <script type="text/javascript" src="../ext/ext-all.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <script type="text/javascript" src="jfgl.js"></script>
     <script type="text/javascript">
		Ext.onReady(function(){	
			new Ext.Viewport({
				autoEl : 'div',
				layout : 'border',
				autoWidth : true,
				autoHeight:true,
				frame : true,
				items : [
					new Ext.Hudongsoft.jfglGrid({region:'center'})
				]
			});
		});	
	</script>
</body>
</html>
