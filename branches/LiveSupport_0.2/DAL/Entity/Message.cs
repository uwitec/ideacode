﻿using System;
using System.Collections.Generic;
using System.Text;

namespace LiveSupport.DAL.Entity
{

    public class Message
    {
        public const string ChatMessage_OperatorToVisitor = "O2V";
        public const string ChatMessage_VistorToOperator = "V2O";
        public const string SystemMessage_ToOperator = "S2O";
        public const string SystemMessage_ToVisitor = "S2V";
        public const string SystemMessage_ToBoth = "S2B";

        private string messageId;

        public string MessageId
        {
            get { return messageId; }
            set { messageId = value; }
        }
        private string chatId;

        public string ChatId
        {
            get { return chatId; }
            set { chatId = value; }
        }
        private string source;

        public string Source
        {
            get { return source; }
            set { source = value; }
        }
        private string destination;

        public string Destination
        {
            get { return destination; }
            set { destination = value; }
        }
        private string text;

        public string Text
        {
            get { return text; }
            set { text = value; }
        }
        private DateTime sentDate;

        public DateTime SentDate
        {
            get { return sentDate; }
            set { sentDate = value; }
        }
        private string type;

        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        public Message()
        {

        }
    }
}
