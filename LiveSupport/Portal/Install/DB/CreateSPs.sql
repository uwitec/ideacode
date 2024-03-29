
GO
/****** Object:  StoredProcedure [dbo].[LiveChat_ChatMessagesAdd]    Script Date: 09/21/2007 05:32:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_ChatMessagesAdd]
	@ChatID	char(39),
	@FromName	varchar(100),
	@Message	varchar(3000),
	@SentDate	bigint

AS

INSERT INTO LiveChat_ChatMessages(ChatID, FromName, Message, SentDate)
VALUES(@ChatID, @FromName, @Message, @SentDate)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_ChatMessagesGet]    Script Date: 09/21/2007 05:32:36 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_ChatMessagesGet]
	@LastCheck	bigint,
	@ChatID		char(39)

AS

SELECT
	MessageID,
	ChatID,
	FromName,
	Message,
	SentDate
FROM
	LiveChat_ChatMessages
WHERE
	(ChatID = @ChatID) AND
	(MessageID > @LastCheck)
ORDER BY MessageID ASC

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_ChatRequestsAdd]    Script Date: 09/21/2007 05:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_ChatRequestsAdd]
	@ChatID	char(39),
	@VisitorIP varchar(50),
	@VisitorName varchar(100),
	@VisitorEmail varchar(225),
	@VisitorUserAgent varchar(125),
	@OperatorID int,
	@RequestDate smalldatetime
AS

DECLARE
	@ExistingRequest char(39)

SELECT 
	@ExistingRequest = ChatID
FROM 
	LiveChat_ChatRequests 
WHERE 
	VisitorIP = @VisitorIP AND 
	OperatorID = -1

IF @ExistingRequest IS NULL  BEGIN

	INSERT INTO LiveChat_ChatRequests (ChatID, VisitorIP, VisitorName, VisitorEmail, VisitorUserAgent, OperatorID, RequestDate)
	VALUES (@ChatID, @VisitorIP, @VisitorName, @VisitorEmail, @VisitorUserAgent, @OperatorID, @RequestDate)

END ELSE BEGIN

	SET @ChatID = @ExistingRequest

END

SELECT @ChatID

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_ChatRequestsDelete]    Script Date: 09/21/2007 05:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_ChatRequestsDelete]
	@ChatID	char(39)
AS
DELETE FROM LiveChat_ChatRequests
WHERE
	(ChatID = @ChatID)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_ChatRequestsGetByChatID]    Script Date: 09/21/2007 05:32:38 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[LiveChat_ChatRequestsGetByChatID]
	@ChatID char(39)
AS
SELECT ChatID, VisitorIP, VisitorName, VisitorEmail, VisitorUserAgent, OperatorID, RequestDate, AcceptDate, ClosedDate
FROM LiveChat_ChatRequests
WHERE
	ChatID = @ChatID

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_ChatRequestsGetFromVisitors]    Script Date: 09/21/2007 05:32:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_ChatRequestsGetFromVisitors]
	@OperatorID	int
AS
SELECT ChatID, VisitorIP, VisitorName, VisitorEmail, VisitorUserAgent, OperatorID, RequestDate, AcceptDate, ClosedDate
 FROM LiveChat_ChatRequests
WHERE
	(OperatorID = -1 OR OperatorID = @OperatorID) AND
	(AcceptDate IS NULL)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_ChatRequestsUpdate]    Script Date: 09/21/2007 05:32:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_ChatRequestsUpdate]
	@ChatID char(39),
	@OperatorID int,
	@AcceptDate smalldatetime
AS

UPDATE LiveChat_ChatRequests SET
	OperatorID = @OperatorID, 
	AcceptDate = @AcceptDate
WHERE
	(ChatID = @ChatID)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_CheckNewMessage]    Script Date: 09/21/2007 05:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_CheckNewMessage]
	@ChatId	char(39),
	@LastID	bigint
AS

SELECT COUNT(*) FROM LiveChat_ChatMessages
WHERE
	ChatID = @ChatID AND
	MessageID > @LastID

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_LogAccessAdd]    Script Date: 09/21/2007 05:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_LogAccessAdd]
	@PageRequested varchar(500),
	@DomainRequested varchar(250),
	@RequestedTime	smalldatetime,
	@Referrer varchar(500),
	@VisitorUserAgent varchar(100),
	@VisitorIP varchar(50)
AS
INSERT INTO LiveChat_LogAccess (PageRequested, DomainRequested, RequestedTime, Referrer, VisitorUserAgent, VisitorIP)
VALUES (@PageRequested, @DomainRequested, @RequestedTime, @Referrer, @VisitorUserAgent, @VisitorIP)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_LogAccessGet]    Script Date: 09/21/2007 05:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_LogAccessGet]
	@RequestedTime	smalldatetime
AS

SELECT 
	MAX(LogAccessID) AS LogAccessID, 
	VisitorIP
INTO #result
FROM 
	LiveChat_LogAccess
WHERE
	(RequestedTime > @RequestedTime)
GROUP BY VisitorIP

SELECT
	DISTINCT
	la.LogAccessID, 
	la.PageRequested, 
	la.DomainRequested, 
	la.RequestedTime,
	la.Referrer, 
	la.VisitorUserAgent, 
	la.VisitorIP, 
	cr.OperatorID,
	o.OperatorName
FROM 
	LiveChat_LogAccess la INNER JOIN #result r ON
	la.LogAccessID = r.LogAccessID LEFT OUTER JOIN LiveChat_ChatRequests cr ON
	r.VisitorIP = cr.VisitorIP LEFT OUTER JOIN LiveChat_Operators o ON cr.OperatorID = o.OperatorID
WHERE
	(DATEDIFF(hh, la.RequestedTime, GETDATE()) < 2)
ORDER BY RequestedTime DESC

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_LogAccessGetLastID]    Script Date: 09/21/2007 05:32:43 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[LiveChat_LogAccessGetLastID]

AS
SELECT
	MAX(LogAccessID)
FROM
	LiveChat_LogAccess

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_OperatorsAdd]    Script Date: 09/21/2007 05:32:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_OperatorsAdd]
	@OperatorName varchar(100),
	@OperatorPassword varchar(50),
	@OperatorEmail varchar(250)
AS
INSERT INTO LiveChat_Operators (OperatorName, OperatorPassword, OperatorEmail, IsOnline)
VALUES (@OperatorName, @OperatorPassword, @OperatorEmail, 0)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_OperatorsDelete]    Script Date: 09/21/2007 05:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_OperatorsDelete]
	@OperatorID int
AS
DELETE FROM LiveChat_Operators
WHERE
	(OperatorID = @OperatorID)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_OperatorsGet]    Script Date: 09/21/2007 05:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_OperatorsGet]
	@OperatorName varchar(100),
	@OperatorPassword varchar(50)
AS

UPDATE LiveChat_Operators SET
	IsOnline = 1
WHERE
	(OperatorName = @OperatorName) AND
	(OperatorPassword = @OperatorPassword)

SELECT OperatorID, OperatorName, OperatorPassword, OperatorEmail, IsOnline
FROM LiveChat_Operators
WHERE
	(OperatorName = @OperatorName) AND
	(OperatorPassword = @OperatorPassword)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_OperatorsGetAllOnline]    Script Date: 09/21/2007 05:32:45 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[LiveChat_OperatorsGetAllOnline]

AS
SELECT OperatorID, OperatorName, OperatorPassword, OperatorEmail, IsOnline
FROM LiveChat_Operators
WHERE
	(IsOnline = 1)

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_OperatorsGetByID]    Script Date: 09/21/2007 05:32:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[LiveChat_OperatorsGetByID]
	@OperatorID	int
AS
SELECT OperatorID, OperatorName, OperatorPassword, OperatorEmail, IsOnline
FROM LiveChat_Operators
WHERE
	(OperatorID = @OperatorID)


GO
/****** Object:  StoredProcedure [dbo].[LiveChat_OperatorsGetStatus]    Script Date: 09/21/2007 05:32:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[LiveChat_OperatorsGetStatus]

AS

DECLARE
	@IsOnline bit

SET @IsOnline = 0

-- Any body online

SELECT
	@IsOnline = ISNULL(IsOnline, 0)
FROM
	LiveChat_Operators
WHERE
	(IsOnline = 1)

SELECT @IsOnline

GO
/****** Object:  StoredProcedure [dbo].[LiveChat_OperatorsUpdate]    Script Date: 09/21/2007 05:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LiveChat_OperatorsUpdate]
	@OperatorID int,
	@IsOnline bit
AS
UPDATE LiveChat_Operators SET
	IsOnline = @IsOnline
WHERE
	(OperatorID = @OperatorID)