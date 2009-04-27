set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER PROCEDURE [dbo].[LiveChat_ChatMessagesAdd]
	@ChatID	char(39),
	@FromName	varchar(100),
	@Message	varchar(3000),
	@SentDate	bigint,
	@Type		int
AS

INSERT INTO LiveChat_ChatMessages(ChatID, FromName, [Message], SentDate,[Type])
VALUES(@ChatID, @FromName, @Message, @SentDate,@Type)



