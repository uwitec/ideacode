#region Header Comment
/*
 * Project			: LiveChat Starter Kit
 * Created By		: Dominic St-Pierre
 * Created Date	: 2007/04/18
 * Comment		: Entity representing a chat message
 * 
 * History:
 * 
 */
#endregion
using System;
using System.Xml;
using System.Xml.Serialization;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Entity representing a chat message
/// </summary>
/// 聊天信息类
/// 

[Serializable()]
public class ChatMessageInfo 
{
	private long myMsgId = 0;
	[XmlElement]
	public long MessageId
	{
		get { return myMsgId; }
		set { myMsgId = value; }
	}
	
	private string myChatId;
	[XmlElement]
	public string ChatId
	{
		get { return myChatId; }
		set { myChatId = value; }
	}

	private string myName;
	[XmlElement]
	public string Name
	{
		get { return myName; }
		set { myName = value; }
	}

	private long mySentDate;
	[XmlElement]
	public long SentDate
	{
		get { return mySentDate; }
		set { mySentDate = value; }
	}

	private string myMessage;
	[XmlElement]
	public string Message
	{
		get { return myMessage; }
		set { myMessage = value; }
	}
    private int myType;
    [XmlElement]
    public int Type
    {
        get { return myType; }
        set { myType = value; }
    }

	public ChatMessageInfo()
	{
		myMsgId++;
		myChatId = string.Empty;
		myName = string.Empty;
		mySentDate = DateTime.MinValue.Ticks;
		myMessage = string.Empty;
        myType = 1;
	}

	public ChatMessageInfo(string chatId, string name,  string message,int type)
	{
		myMsgId = -1;
		myChatId = chatId;
		myName = name;
		mySentDate = DateTime.Now.ToUniversalTime().Ticks;
		myMessage = message;
        myType = type;
	}

    //获取数据库聊天信息
    public ChatMessageInfo(SqlDataReader data)
    {
        if (!Convert.IsDBNull(data["MessageID"])) myMsgId = (long)data["MessageID"];
        if (!Convert.IsDBNull(data["ChatID"])) myChatId = data["ChatID"].ToString().TrimEnd();
        if (!Convert.IsDBNull(data["FromName"])) myName = (string)data["FromName"];
        if (!Convert.IsDBNull(data["Message"])) myMessage = (string)data["Message"];
        if (!Convert.IsDBNull(data["SentDate"])) mySentDate = (long)data["SentDate"];
        if (!Convert.IsDBNull(data["Type"])) myType = (int)data["Type"];
    }

	public static int SortByDate(ChatMessageInfo x, ChatMessageInfo y)
	{
        if (x.SentDate < y.SentDate)
            return 1;
        else if (x.SentDate > y.SentDate)
            return -1;
        else
            return 0;
	}
}
