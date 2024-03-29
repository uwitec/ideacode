﻿using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Collections;
using System.Data.Common;
using System.Reflection;

/// <summary>
///Json 的摘要说明
/// </summary>
public class Json
{
    /// <summary>
    /// 对象转换为Json字符串
    /// </summary>
    /// <param name="jsonObject">对象</param>
    /// <returns>Json字符串</returns>
    public static string ToJson(object jsonObject)
    {
        string jsonString = "{";
        PropertyInfo[] propertyInfo = jsonObject.GetType().GetProperties();
        for (int i = 0; i < propertyInfo.Length; i++)
        {
            object objectValue = propertyInfo[i].GetGetMethod().Invoke(jsonObject, null);
            string value = string.Empty;
            if (objectValue is DateTime || objectValue is Guid || objectValue is TimeSpan)
            {
                value = "'" + objectValue.ToString() + "'";
            }
            else if (objectValue is string)
            {
                value = "'" + ToJson(objectValue.ToString()) + "'";
            }
            else if (objectValue is IEnumerable)
            {
                value = ToJson((IEnumerable)objectValue);
            }
            else
            {
                value = ToJson(objectValue.ToString());
            }
            jsonString += "\"" + ToJson(propertyInfo[i].Name) + "\":" + value + ",";
        }

        return Json.DeleteLast(jsonString) + "}";
    }
    /// <summary>
    /// 对象集合转换Json
    /// </summary>
    /// <param name="array">集合对象</param>
    /// <returns>Json字符串</returns>
    public static string ToJson(IEnumerable array)
    {
        string jsonString = "[";
        foreach (object item in array)
        {
            jsonString += Json.ToJson(item) + ",";
        }
        return Json.DeleteLast(jsonString) + "]";
    }
    /// <summary>
    /// 普通集合转换Json
    /// </summary>
    /// <param name="array">集合对象</param>
    /// <returns>Json字符串</returns>
    public static string ToArrayString(IEnumerable array)
    {
        string jsonString = "[";
        foreach (object item in array)
        {
            jsonString = ToJson(item.ToString()) + ",";
        }
        return Json.DeleteLast(jsonString) + "]";
    }
    /// <summary>
    /// 删除结尾字符
    /// </summary>
    /// <param name="str">需要删除的字符</param>
    /// <returns>完成后的字符串</returns>
    private static string DeleteLast(string str)
    {
        if (str.Length > 1)
        {
            return str.Substring(0, str.Length - 1);
        }
        return str;
    }
    /// <summary>
    /// Datatable转换为Json
    /// </summary>
    /// <param name="table">Datatable对象</param>
    /// <returns>Json字符串</returns>
    public static string ToJson(DataTable table)
    {
        string jsonString = "[";
        DataRowCollection drc = table.Rows;
        for (int i = 0; i < drc.Count; i++)
        {
            jsonString += "{";
            foreach (DataColumn column in table.Columns)
            {
                jsonString += "\"" + ToJson(column.ColumnName) + "\":";
                if (column.DataType == typeof(DateTime) || column.DataType == typeof(string))
                {
                    jsonString += "\"" + ToJson(drc[i][column.ColumnName].ToString()) + "\",";
                }
                else
                {
                    jsonString += ToJson(drc[i][column.ColumnName].ToString()) + ",";
                }
            }
            jsonString = DeleteLast(jsonString) + "},";
        }
        return DeleteLast(jsonString) + "]";
    }
    /// <summary>
    /// DataReader转换为Json
    /// </summary>
    /// <param name="dataReader">DataReader对象</param>
    /// <returns>Json字符串</returns>
    public static string ToJson(DbDataReader dataReader)
    {
        string jsonString = "[";
        while (dataReader.Read())
        {
            jsonString += "{";

            for (int i = 0; i < dataReader.FieldCount; i++)
            {
                jsonString += "\"" + ToJson(dataReader.GetName(i)) + "\":";
                Type type = dataReader.GetFieldType(i);
                if (type == typeof(DateTime))
                {
                    if (!dataReader.IsDBNull(i))
                    {
                        DateTime dt = dataReader.GetDateTime(i);
                        jsonString += "\"" + ToJson(dt.ToString("yyyy-MM-dd HH:mm:ss")) + "\",";
                    }
                    else
                    {
                        jsonString += "\"\",";
                    }                    
                }
                else if (type == typeof(string))
                {
                    jsonString += "\"" + ToJson(dataReader[i].ToString()) + "\",";
                }
                else if (type == typeof(Int32) || type == typeof(Int64) || type == typeof(Double) || type == typeof(Decimal))
                {
                    if (!dataReader.IsDBNull(i))
                    {
                        jsonString += ToJson(dataReader[i].ToString()) + ",";
                    }
                    else
                    {
                        jsonString += "\"\",";
                    }
                }
                else
                {
                    throw new Exception("未知类型:" + type.ToString());
                    //jsonString += ToJson(dataReader[i].ToString()) + ",";
                }
            }
            jsonString = DeleteLast(jsonString) + "},";
        }
        dataReader.Close();
        return DeleteLast(jsonString) + "]";
    }
    /// <summary>
    /// DataSet转换为Json
    /// </summary>
    /// <param name="dataSet">DataSet对象</param>
    /// <returns>Json字符串</returns>
    public static string ToJson(DataSet dataSet)
    {
        string jsonString = "{";
        foreach (DataTable table in dataSet.Tables)
        {
            jsonString += "\"" + ToJson(table.TableName) + "\":" + ToJson(table) + ",";
        }
        return jsonString = DeleteLast(jsonString) + "}";
    }
    /// <summary>
    /// String转换为Json
    /// </summary>
    /// <param name="value">String对象</param>
    /// <returns>Json字符串</returns>
    public static string ToJson(string value)
    {
        if (string.IsNullOrEmpty(value))
        {
            return string.Empty;
        }

        string temstr;
        temstr = value;
        //temstr = temstr.Replace("{", "｛").Replace("}", "｝").Replace(":", "：").Replace(",", "，").Replace("[", "【").Replace("]", "】").Replace(";", "；").Replace("\n", "<br/>").Replace("\r", "");

        temstr = temstr.Replace("\t", "   ");
        temstr = temstr.Replace("'", "\'");
        temstr = temstr.Replace(@"\", @"\\");
        temstr = temstr.Replace("\"", "\"\"");
        return temstr;
    }
}
