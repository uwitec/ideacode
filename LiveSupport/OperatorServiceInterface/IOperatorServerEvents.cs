﻿using System;
using System.Collections.Generic;
using System.Text;
using LiveSupport.LiveSupportModel;

namespace OperatorServiceInterface
{
    // TODO: 请求/邀请超时，取消请求/邀请
    public interface IOperatorServerEvents
    {
        // Operator events
        event EventHandler<OperatorStatusChangeEventArgs> OperatorStatusChanged; // 客服状态改变
        event EventHandler<OperatorForceLogoffEventArgs> OperatorForceLogoff;

        // Chat events
        event EventHandler<VisitorChatRequestEventArgs> VisitorChatRequest; //访客对话请求
        event EventHandler<OperatorChatRequestEventArgs> OperatorChatRequest; //客服对话邀请
        event EventHandler<VisitorChatRequestAcceptedEventArgs> VisitorChatRequestAccepted; // 访客对话请求被接受
        event EventHandler<OperatorChatRequestAcceptedEventArgs> OperatorChatRequestAccepted; // 客服对话邀请被接受
        event EventHandler<OperatorChatRequestDeclinedEventArgs> OperatorChatRequestDeclined; // 客服对话邀请被拒绝
        event EventHandler<NewChatEventArgs> NewChat; // 新的对话
        event EventHandler<ChatStatusChangedEventArgs> ChatStatusChanged; // 对话状态改变

        event EventHandler<OperatorChatJoinInviteEventArgs> ChatJoinInvite;
        event EventHandler<OperatorChatJoinInviteAcceptedEventArgs> ChatJoinInviteAccepted;
        event EventHandler<OperatorChatJoinInviteDeclinedEventArgs> ChatJoinInviteDeclined;

        // Chat Message
        event EventHandler<ChatMessageEventArgs> NewMessage;
        // Visitor event
        event EventHandler<NewVisitingEventArgs> NewVisiting; // 新访问,访客可能已经存在
        event EventHandler<VisitorLeaveEventArgs> VisitorLeave; // 访客离开 
        
    }

    [Serializable]
    public class OperatorForceLogoffEventArgs : EventArgs
    {
    }

    [Serializable]
    public class OperatorChatJoinInviteDeclinedEventArgs : OperatorChatJoinInviteAcceptedEventArgs
    {
        public OperatorChatJoinInviteDeclinedEventArgs(OperatorChatJoinInviteEventArgs operatorChatJoinInvite)
            :base(operatorChatJoinInvite)
        {   
        }
    }

    [Serializable]
    public class OperatorChatJoinInviteAcceptedEventArgs : EventArgs
    {
        public OperatorChatJoinInviteEventArgs OperatorChatJoinInvite;
        public OperatorChatJoinInviteAcceptedEventArgs(OperatorChatJoinInviteEventArgs operatorChatJoinInvite)
        {
            this.OperatorChatJoinInvite = operatorChatJoinInvite;
        }
    }

    [Serializable]
    public class OperatorChatJoinInviteEventArgs : EventArgs
    {
        public string Invitor; // 邀请者
        public string Invitee; // 被邀者
        public string ChatId;
        public OperatorChatJoinInviteEventArgs(string invitor, string invitee, string chatId)
        {
            this.Invitor = invitor;
            this.Invitee = invitee;
            this.ChatId = chatId;
        }
    }

    [Serializable]
    public class VisitorLeaveEventArgs : EventArgs
    {
        public string VisitorId;
        public VisitorLeaveEventArgs(string visitorId)
        {
            this.VisitorId = visitorId;
        }
    }

    [Serializable]
    public class ChatMessageEventArgs : EventArgs
    {
        public Message Message;
        public ChatMessageEventArgs(Message message)
        {
            this.Message = message;
        }

        public override string ToString()
        {
            return string.Format("ChatMessageEventArgs Source={0} Destination={1} Content={2}", Message.Source, Message.Destination, Message.Text);
        }

    }

    [Serializable]
    public class NewVisitingEventArgs : EventArgs
    {
        public Visitor Visitor;
        public VisitSession Session;
        public NewVisitingEventArgs(Visitor visitor, VisitSession session)
        {
            this.Visitor = visitor;
            this.Session = session;
        }
    }

    [Serializable]
    public class OperatorChatRequestDeclinedEventArgs : EventArgs
    {
        public OperatorChatRequestEventArgs ChatRequest;
        public OperatorChatRequestDeclinedEventArgs(OperatorChatRequestEventArgs chatRequest)
        {
            this.ChatRequest = chatRequest;
        }

        public override string ToString()
        {
            return string.Format("OperatorChatRequestDeclinedEventArgs OperatorId={0} VisitorId={1}", ChatRequest.OperatorId, ChatRequest.VisitorId, ChatRequest.Chat.ChatId);
        }
    }

    [Serializable]
    public class OperatorChatRequestAcceptedEventArgs : EventArgs
    {
        public OperatorChatRequestEventArgs ChatRequest;
        public OperatorChatRequestAcceptedEventArgs(OperatorChatRequestEventArgs chatRequest)
        {
            this.ChatRequest = chatRequest;
        }

        public override string ToString()
        {
            return string.Format("OperatorChatRequestAcceptedEventArgs OperatorId={0} VisitorId={1}", ChatRequest.OperatorId, ChatRequest.VisitorId, ChatRequest.Chat.ChatId);
        }

    }

    [Serializable]
    public class VisitorChatRequestAcceptedEventArgs : EventArgs
    {
        public VisitorChatRequestEventArgs VisitorChatRequest;
        public VisitorChatRequestAcceptedEventArgs(VisitorChatRequestEventArgs visitorChatRequest)
        {
            this.VisitorChatRequest = visitorChatRequest;
        }

        public override string ToString()
        {
            return string.Format("VisitorChatRequestAcceptedEventArgs VisitorId={0} ChatId={1}", VisitorChatRequest.VisitorId, VisitorChatRequest.Chat.ChatId);
        }
    }

    [Serializable]
    public class OperatorChatRequestEventArgs : VisitorChatRequestEventArgs
    {
        public string OperatorId;
        public Chat Chat;
        public OperatorChatRequestEventArgs(string operatorId, string visitorId,Chat chat)
            : base(visitorId, chat)
        {
            this.Chat = chat;
            this.OperatorId = operatorId;
        }
        public override string ToString()
        {
            return string.Format("OperatorChatRequestEventArgs OperatorId={0} ChatId={1}", OperatorId, Chat.ChatId);
        }
    }

    [Serializable]
    public class NewChatEventArgs : EventArgs
    {
        public Chat Chat;
        public NewChatEventArgs(Chat chat)
        {
            this.Chat = chat;
        }
    }

    [Serializable]
    public class ChatStatusChangedEventArgs : EventArgs
    {
        public string ChatId;
        public ChatStatus Status;
        public ChatStatusChangedEventArgs(string chatId, ChatStatus status)
        {
            this.ChatId = chatId;
            this.Status = status;
        }

        public override string ToString()
        {
            return string.Format("ChatStatusChangedEventArgs ChatId={0} Status={1}", ChatId, Status);
        }
    }

    [Serializable]
    public class VisitorChatRequestEventArgs : EventArgs
    {
        public string VisitorId;
        public Guid RequestId;
        public Chat Chat;
        public VisitorChatRequestEventArgs(string visitorId,Chat chat)
        {
            this.VisitorId = visitorId;
            this.RequestId = Guid.NewGuid();
            this.Chat = chat;
        }

        public override string ToString()
        {
            return string.Format("VisitorChatRequestEventArgs VisitorId={0} ChatId={1}", VisitorId, Chat.ChatId);
        }
    }
     
    [Serializable]
    public class OperatorStatusChangeEventArgs : EventArgs
    {
        public string OperatorId;
        public OperatorStatus Status;
        public OperatorStatusChangeEventArgs(string operatorId, OperatorStatus status)
        {
            this.OperatorId = operatorId;
            this.Status = status;
        }

        public override string ToString()
        {
            return string.Format("OperatorStatusChangeEventArgs OperaotrId={0} Status={1}", OperatorId, Status.ToString());
        }
    }
}
