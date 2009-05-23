using System;
using System.Configuration;
using System.Configuration.Provider;
using System.Web.Configuration;
using System.Collections.Generic;
using LiveSupport.LiveSupportModel;
using LiveSupport.LiveSupportDAL.SqlProviders;

/// <summary>
/// Summary description for OperatorService
/// </summary>
public static class OperatorService
{
    static OperatorService()
    {
        operators = SqlOperatorProvider.GetAllOperators();
    }

    public static List<Operator> GetAllOperators()
    {
        return operators;
    }

    private static List<Operator> operators = new List<Operator>();
    /// <summary>
    ///  判定客服是否在线
    /// </summary>
    /// <param name="operatorId">客服ID</param>
    /// <returns>BOOL</returns>
    public static bool IsOperatorOnline(string operatorId)
    {
        Operator op = null;
        foreach (Operator item in operators)
        {
            if (item.OperatorId == operatorId)
            {
                op = item;
            }
        }
        if (op == null)
        {
            foreach (Operator item in SqlOperatorProvider.GetAllOperators())
            {
                if (item.OperatorId == operatorId)
                {
                    op = item;
                }
            }
        }
        if (op != null)
        {
            return op.Status != OperatorStatus.Offline;
        }
        return false;
    }
    /// <summary>
    /// 登陆
    /// </summary>
    /// <param name="userName">用户名</param>
    /// <param name="password">密码</param>
    /// <returns>operator对象</returns>
    public static Operator Login(string accountName, string operatorName, string password)
    {
        Account account = AccountService.FindAccountByLoginName(accountName);
        Operator op = null;
        if (account != null)
        {
            foreach (Operator item in operators)
            {
                if (item.AccountId==account.AccountId&&item.LoginName==operatorName&&item.Password==password)
                {
                    op = item;
                }
                
            }
            if (op == null)
            {
                foreach (Operator item in SqlOperatorProvider.GetAllOperators())
                {
                    if (item.AccountId == account.AccountId && item.LoginName == operatorName && item.Password == password)
                    {
                        op = item;
                    }
                }
            }

           if(op!=null)
           {
             op.Status = OperatorStatus.Idle;
           }
        }
        return op;
    }
    /// <summary>
    /// 注销 登陆
    /// </summary>
    /// <param name="operatorId">客服ID</param>
    internal static void Logout(string operatorId)
    {
        Operator op = null;
        foreach (Operator item in operators)
        {
            if (item.OperatorId==operatorId)
            {
                op = item;
            }
        }
        if (op == null)
        {
            foreach (Operator item in SqlOperatorProvider.GetAllOperators())
            {
                if (item.OperatorId == operatorId)
                {
                    op = item;
                }
            }
        }
        if (op != null)
        {
            op.Status = OperatorStatus.Offline;
        }

    }

    public static bool HasOnlineOperator(string accountId)
    {
        foreach (Operator item in operators)
        {
            if (item.AccountId == accountId && item.Status != OperatorStatus.Offline)
            {
                return true;
            }
        }
        return false;
    }


    public static Operator GetOperatorById(string operatorId)
    {
         Operator op=null;
         foreach (Operator item in operators)
         {
             if (item.OperatorId == operatorId)
             {
                 op=item;
             }
         }
         if (op == null)
         {
             foreach (Operator item in SqlOperatorProvider.GetAllOperators())
             {
                 if (item.OperatorId == operatorId)
                 {
                     op = item;
                 }
             }
         }
        return op;
    }

    /// <summary>
    /// 修改密码
    /// </summary>
    /// <param name="operatorId">operatorId</param>
    /// <param name="oldPassword">老密码</param>
    /// <param name="newPassword">新密码</param>
    /// <returns>(int)信息</returns>
    public static int ChangPassword(string operatorId, string oldPassword, string newPassword)
    {
        Operator op = null;
        foreach (Operator item in operators)
        {
            if (item.OperatorId == operatorId)
            {
                op = item;
            }
        }
        if (op == null)
        {
            foreach (Operator item in  SqlOperatorProvider.GetAllOperators())
            {
                if (item.OperatorId == operatorId)
                {
                    op = item;
                }
            }
        }
        if (op == null)
        {
            if (op.Password == oldPassword)
            {
                op.Password = newPassword;
                UpdateOperator(op);
                return 0;//成功
            }
            else
            {
                return -1;//用户名或密码错误
            }
        }
        return -3;//用户不存在
    }
    /// <summary>
    /// 更新客服信息
    /// </summary>
    /// <param name="op">Operator对象</param>
    public static void UpdateOperator(Operator op)
    {
        SqlOperatorProvider.UpdateOperator(op);
    }
    /// <summary>
    /// 判断用用户名是否存在
    /// </summary>
    /// <param name="loginName">登录名</param>
    /// <returns></returns>
    public static Operator GetOperatorByLoginName(string loginName)
    {
        Operator op = null;
        foreach (Operator item in operators)
        {
            if (item.LoginName == loginName)
            {
                op=item;
            }
        }
        if (op != null)
        {
            return op;
        }
        else
        {
            op = null;
            op=SqlOperatorProvider.GetOperatorByLoginName(loginName);
            if (op != null)
            {
                return op;
            }
            else
            {
                return null;
            }
        }
    }

}
