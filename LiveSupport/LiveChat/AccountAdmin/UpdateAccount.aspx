﻿<%@ Page Title="客服中心-LiveSupport在线客服系统" Language="C#" MasterPageFile="~/AccountAdmin/MasterAccountAdmin.master" AutoEventWireup="true" CodeFile="UpdateAccount.aspx.cs" Inherits="AccountAdmin_Default3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0">
    <tr><td><img  src="Images/n_540_1.jpg" style="height: 16px; width: 570px"/></td></tr>
    <tr><td style="background-image:url('Images/n_540_bg.jpg');width: 570px; height: 21px; " align="center">公司账号管理</td></tr>
    <tr><td><img  src="Images/n_540_2.jpg" style="height: 9px; width: 570px"/></td></tr>
  </table>
   
 <table  style="margin-top:5px;" cellpadding="0" cellspacing="0">
   <tr><td><img  src="Images/n_540_1.jpg" style="height: 16px; width: 570px"/></td></tr>
   <tr><td><table style="background-image:url('Images/n_540_bg.jpg');width: 570px; height: 295px;"><tr><td valign="top" align="center"> 
  <div style="text-align:left;color: #cccccc; border-bottom: 1px solid; position: relative;">&nbsp;&nbsp;&nbsp;<asp:ImageButton 
          ID="ImageButton1" runat="server"  ImageUrl="Images/zhuce2.jpg" 
          CausesValidation="False" PostBackUrl="~/AccountAdmin/AccountHome.aspx"/><img src="Images/mima2.jpg" /></div>
  <!--内容-->
  <TABLE cellSpacing=5 cellPadding=0 border=0 style="text-align:left; margin-top:10px;" >
        <TBODY >
        <TR>
          <TD >&nbsp;&nbsp; 管理员呢称： </TD>
          <TD ><asp:TextBox ID="txtNickname" runat="server" Width="160px"></asp:TextBox>
&nbsp;</TD>
          <TD>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="txtNickname" ErrorMessage="不能为空!"></asp:RequiredFieldValidator>
            </TD></TR>
        <TR>
          <TD><FONT color=red>*</FONT> 原始密码： </TD>
          <TD><asp:TextBox ID="txtAgoPwd" runat="server" Width="160px" 
                  TextMode="Password"></asp:TextBox>
&nbsp;</TD>
          <TD>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="txtAgoPwd" ErrorMessage="不能为空!"></asp:RequiredFieldValidator>
            </TD></TR>
        <TR>
          <TD><FONT color=red>*</FONT> 新密码： </TD>
          <TD ><asp:TextBox ID="txtPwd" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
&nbsp;</TD>
          <TD >
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ControlToValidate="txtPwd" ErrorMessage="不能为空!"></asp:RequiredFieldValidator>
            </TD></TR>
        <TR>
          <TD><FONT color=red>*</FONT> 密码确认： </TD>
          <TD ><asp:TextBox ID="txtPwds" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
&nbsp;</TD>
          <TD >&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ControlToValidate="txtPwds" ErrorMessage="不能为空!"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID="CompareValidator1" runat="server" 
                  ControlToCompare="txtPwd" ControlToValidate="txtPwds" 
                  ErrorMessage="确认密码与新密码不一致!"></asp:CompareValidator>
            </TD></TR>
       
                  <TR>
          <TD >&nbsp;&nbsp;&nbsp; </TD>
          <TD >
              <asp:Button ID="btnSave" runat="server" Text="保存" Width="63px" 
                  onclick="btnSave_Click" />
                      </TD>
          <TD>&nbsp;</TD></TR>
          </TBODY></TABLE>
</td></tr></table></td></tr>
   <tr><td><img  src="Images/n_540_2.jpg" style="height: 9px; width: 570px"/></td></tr>
 </table>
 
</asp:Content>
