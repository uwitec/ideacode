using System;
using System.Collections.Generic;
using System.Text;
using LiveSupport.LiveSupportModel;
using System.Data.SqlClient;
using LiveSupport.SqlProviders;

namespace LiveSupport.LiveSupportDAL.SqlProviders
{
    public class SqlOperatorProvider
    {
        /// <summary>
        /// 取所有的客服信息
        /// </summary>
        /// <returns></returns>
        public static List<Operator> GetAllOperators()
        {
            List<Operator> ops = new List<Operator>();
            string sql = "select * from LiveChat_Operator";
            SqlDataReader r = DBHelper.GetReader(sql);
            while (r.Read())
            {
                Operator op = new Operator(r);
                op.Department = SqlDepartmentProvider.GetDepartmentById(r["DepartmentId"].ToString());
                ops.Add(op);

            }
            r.Close();
            r.Dispose();
            r = null;
            return ops;
        }
        /// <summary>
        /// 更新客服信息
        /// </summary>
        /// <param name="op">Operator对象</param>
        public static int UpdateOperator(Operator op)
        {
            string sql = string.Format(
             "UPDATE [LiveSupport].[dbo].[LiveChat_Operator]"
             + " SET [AccountId] = '{0}'"
             + ",[LoginName] = '{1}' "
             + ",[Password] = '{2}'"
             + ",[NickName] = '{3}'"
             + ",[Email] = '{4}'"
             + ",[IsAdmin] = '{5}'"
             + ",[Status] = '{6}'"
             + " ,[AVChatStatus] = '{7}'"
             + " ,[DepartmentId] = '{8}'"
             + " WHERE OperatorId='{9}'"
             , op.AccountId, op.LoginName, op.Password, op.NickName, op.Email, op.IsAdmin, op.Status, op.AVChatStatus,op.Department.DepartmentId,op.OperatorId);
            return DBHelper.ExecuteCommand(sql);
        }
        /// <summary>
        /// 判断用用户名是否存在
        /// </summary>
        /// <param name="loginName"></param>
        public static Operator GetOperatorByLoginName(string loginName)
        {
            string sql = "select * from [LiveSupport].[dbo].[LiveChat_Operator] where LoginName='" + loginName+"'";
            SqlDataReader data = null;
            Operator op = null;
            try
            {
                data = DBHelper.GetReader(sql);
                if (data.Read())
                {
                    op = new Operator(data);
                    op.Department = SqlDepartmentProvider.GetDepartmentById(data["DepartmentId"].ToString());
                }
                data.Close();
                data.Dispose();
                data = null;
            }
            catch
            {
                throw;
            }
            return op;
        }
        /// <summary>
        /// 跟据客服ID删除客服信息
        /// </summary>
        /// <param name="operatorId">客服ID</param>
        /// <returns>int</returns>
        public static int  DeleteOperatorByid(string operatorId)
        {
            string sql = "delete  dbo.LiveChat_Operator  where OperatorId='"+operatorId+"'";
            return  DBHelper.ExecuteCommand(sql);
        }
        /// <summary>
        /// 添加一条客服信息
        /// </summary>
        /// <param name="op"></param>
        public static void NewOperator(Operator op)
        {
            string sql = string.Format(
            "INSERT INTO [LiveSupport].[dbo].[LiveChat_Operator]"
           + "([OperatorId]"
           + " ,[AccountId]"
           + " ,[LoginName]"
           + " ,[Password]"
           + " ,[NickName]"
           + " ,[Email]"
           + " ,[IsAdmin]"
           + " ,[Status]"
           + "  ,[AVChatStatus]" 
           + ",[DepartmentId])"
           + "VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')"
           , op.OperatorId,op.AccountId,op.LoginName,op.Password,op.NickName,op.Email,op.IsAdmin,op.Status,op.AVChatStatus,op.Department.DepartmentId);
            DBHelper.ExecuteCommand(sql);
        }
        /// <summary>
        /// 根据公司ID查询所以该公司所有的客服人员
        /// </summary>
        /// <param name="accountId">公司ID</param>
        /// <returns>Operator对象</returns>
        public static List<Operator> GetOperatorByAccountId(string accountId)
        {
            string sql = "select * from LiveChat_Operator where AccountId='" + accountId+"'";
            List<Operator> operators = new List<Operator>();
            SqlDataReader r = DBHelper.GetReader(sql);
            while (r.Read())
            {
                Operator op = new Operator(r);
                op.Department = SqlDepartmentProvider.GetDepartmentById(r["DepartmentId"].ToString());
                operators.Add(op);

            }
            r.Close();
            r.Dispose();
            r = null;
            return operators;
        }
        /// <summary>
        /// 跟据客服ID查询该客服信息
        /// </summary>
        /// <param name="operatorId">客服ID</param>
        /// <returns>Operator 对象</returns>
        public static Operator GetOperatorByOperatorId(string operatorId)
        {
            string sql = "select * from  dbo.LiveChat_Operator where OperatorId='" + operatorId+"'";
            SqlDataReader data = null;
            Operator op = null;
            try
            {
                data = DBHelper.GetReader(sql);
                if (data.Read())
                {
                    op = new Operator(data);
                    op.Department = SqlDepartmentProvider.GetDepartmentById(data["DepartmentId"].ToString());
                }
                data.Close();
                data.Dispose();
                data = null;
            }
            catch
            {
                throw;
            }
            return op;
        }
    }
}
