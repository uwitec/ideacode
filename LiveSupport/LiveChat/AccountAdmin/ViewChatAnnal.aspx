﻿<%@ Page Title="客服中心-LiveSupport在线客服系统" Language="C#" MasterPageFile="~/AccountAdmin/MasterAccountAdmin.master" AutoEventWireup="true" CodeFile="ViewChatAnnal.aspx.cs" Inherits="AccountAdmin_Default3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script src="JS/Save.js"></script>
<SCRIPT type="text/javascript">
    // <![CDATA[
    var myMenu;
    window.onload = function() {
        myMenu = new SDMenu("my_menu");
        //myMenu.remember = true
        myMenu.oneSmOnly = true;
        myMenu.init();
        var firstSubmenu = myMenu.submenus[4];
        myMenu.expandMenu(firstSubmenu);

    };</SCRIPT>
<script src="../js/My97DatePicker/WdatePicker.js"></script>
    <!--内容开始-->
   <!--内容-->
  <table cellpadding="0" cellspacing="0">
    <tr><td><img  src="Images/n_540_1.jpg" style="height: 16px; width: 570px"/></td></tr>
    <tr><td style="background-image:url('Images/n_540_bg.jpg');width: 570px; height: 21px; " align="center">详细聊天记录</td></tr>
    <tr><td><img  src="Images/n_540_2.jpg" style="height: 9px; width: 570px"/></td></tr>
  </table> 
  
  <table  style="margin-top:5px;" cellpadding="0" cellspacing="0">
   <tr><td><img  src="Images/n_540_1.jpg" style="height: 16px; width: 570px"/></td></tr>
   <tr><td><table style="background-image:url('Images/n_540_bg.jpg');width: 570px; height: 295px;"><tr><td valign="top" align="center">
<!--聊天记录内容-->
    
    <div id="div1" style="width:555px;text-align:left;">
        <input id="btnSave" type="button" value="保存HTML" onclick="Save()" />
    </div>
 <div id="divMessage" 
         style=" border-style: solid; border-color: inherit; border-width: 1px; height:340px; width:555px;  overflow: scroll; text-align:left;">
            <asp:Literal   ID="lblMessage" runat="server"></asp:Literal>
    </div>
  <!--内容结束-->
</td></tr></table></td></tr>
   <tr><td><img  src="Images/n_540_2.jpg" style="height: 9px; width: 570px"/></td></tr>
 </table>
 
</asp:Content> 

