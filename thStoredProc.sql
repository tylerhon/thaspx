USE [thport]
GO
drop procedure if exists sp_ins_visitor
go
create procedure sp_ins_visitor
@visitor_id int,
@visitor_fname varchar(50),
@visitor_lname varchar(50),
@visitor_phone varchar(50),
@visitor_email varchar(50),
@visitor_msg varchar(200)
as
INSERT INTO [dbo].[visitor]
           ([visitor_id]
           ,[visitor_fname]
           ,[visitor_lname]
           ,[visitor_phone]
           ,[visitor_email]
           ,[visitor_msg])
     VALUES
          (@visitor_id,
           @visitor_fname,
		   @visitor_lname,
		   @visitor_phone,
		   @visitor_email,
		   @visitor_msg)
GO

exec sp_ins_visitor 1, 'Bob', 'Ross', '222-222-2222', 'Bob@me.com', 'Painting'

CREATE LOGIN [THApp] WITH PASSWORD='Pa$$w0rd', DEFAULT_DATABASE=[thport]
go
use thport
go
CREATE USER [THApp] FOR LOGIN [THApp] WITH DEFAULT_SCHEMA=[dbo]
GO
grant execute on sp_ins_visitor to THApp
go

select * from visitor
