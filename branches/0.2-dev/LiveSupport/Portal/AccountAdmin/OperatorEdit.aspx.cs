﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LiveSupport.LiveSupportModel;
using LiveSupport.BLL;

public partial class AccountAdmin_Default3 : System.Web.UI.Page
{
    Account account;
    string operatorId = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            account = (Account)Session["User"];

            if (Request.QueryString["operatorId"] != null)
            {

                operatorId = Request.QueryString["operatorId"].ToString();
                
                if (!IsPostBack)
                {
                    DataBindDepartment(account.AccountId);
                    DataBindOperator(operatorId);
                }
            }

        }
        else
        {
            this.Response.Redirect("../Login.aspx");
        }
    }
    //绑定公司部门
    public void DataBindDepartment(string AccountId)
    {
        List<Department> list = DepartmentManager.GetDepartmentByAccountId(AccountId);
        if (list != null)
        {
            this.ddlDepartment.DataSource = list;
            this.ddlDepartment.DataTextField = "DepartmentName";
            this.ddlDepartment.DataValueField = "DepartmentId";
            this.ddlDepartment.DataBind();
        }
    }
    //绑定客服信息
    public void DataBindOperator(string operatorId)
    {
        Operator op = OperatorsManager.GetOperatorByOperatorId(operatorId);
        this.txtCompanyName.Text = account.CompanyName;
        this.ddlDepartment.SelectedValue = op.Department.DepartmentId;
        this.txtLoginName.Text = op.LoginName;
        this.txtNickName.Text = op.NickName;
        this.txtPwd.Text = op.Password;
        this.txtEmail.Text = op.Email;
        if (account.LoginName == op.LoginName)
        {
            this.btnSave.Enabled = false;
        }
        else
        {
            this.btnSave.Enabled = true;
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Operator op = new Operator();
        op.OperatorId = operatorId;
        op.AccountId = account.AccountId;
        op.LoginName = this.txtLoginName.Text;
        op.Department = DepartmentManager.GetDepartmentById(this.ddlDepartment.SelectedValue);
        op.Password = this.txtPwd.Text;
        op.NickName = this.txtNickName.Text;
        op.Email = this.txtEmail.Text;
        op.AVChatStatus = "Offline";
        op.IsAdmin = false;
        bool b = OperatorsManager.UpdateOperator(op);
        if (b)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Error", "<script>alert('修改成功');window.location='OperatorsManagment.aspx';</script>");
            return;
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Error", "<script>alert('修改失败'); </script>");
            return;
        }
    }
}