create database FASFINTDR;



------Table creation------
drop table tblSingle;
create TABLE [dbo].[tblSingle](
	[singleId]					[bigint]  IDENTITY(1,1) not null,
	[depositScheme]				[nvarchar](50)			,
	[depositDate]				[datetime]				,
	[tdrSlNo]					[nvarchar](50) UNIQUE	,
	[accountNumber]				[nvarchar](50)			,
	[clientName]				[nvarchar](50)			,
	[fatherName]				[nvarchar](50)			,
	[motherName]				[nvarchar](50)			,
	[spouseName]				[nvarchar](50)			,
	[DOB]						[datetime]				,
	[sex]						[nvarchar](50)			,
	[religion]					[nvarchar](50)			,
	[nationality]				[nvarchar](50)			,
	[id]						[nvarchar](50)			,
	[idNo]						[nvarchar](150)			,
	[occupation]				[nvarchar](100)			,
	[organization]				[nvarchar](150)			,
	[designation]				[nvarchar](50)			,
	[officeAddress]				[nvarchar](200)			,
	[presentAddress]			[nvarchar](200)			,
	[permAddress]				[nvarchar](50)			,
	[phone]						[nvarchar](150)			,
	[mobile]					[nvarchar](150)			,
	[email]						[nvarchar](150)			,
	[fax]						[nvarchar](150)			,
	[depAmount]					[nvarchar](200)					,
	[depTenure]					[nvarchar](150)			,
	[depDateIssue]				[datetime]				,
	[depDateMaturity]			[datetime]				,
	[cheqPoDDNo]				[nvarchar](50)			,
	[cheqDate]					[datetime]				,
	[cheqBank]					[nvarchar](150)			,
	[cheqBranch]				[nvarchar](50)			,
	[cheqTakaInWrd]				[nvarchar](50)			,
	[sourceFunds]				[nvarchar](150)			,
	[interestRate]				[nvarchar](100)			,
	[nameRM]					[nvarchar](50)			,
	[nominee1]					[nvarchar](50)			,
	[nominee1FatherName]		[nvarchar](50)			,
	[nominee1MotherName]		[nvarchar](50)			,
	[nominee1SpouseName]		[nvarchar](50)			,
	[nominee1Relation]			[nvarchar](50)			,
	[nominee1Percentage]		[nvarchar](50)			,
	[nominee1Image]				[image]					,
	[nominee1Signature]			[image]					,
	[nominee2]					[nvarchar](50)			,
	[nominee2FatherName]		[nvarchar](50)			,
	[nominee2MotherName]		[nvarchar](50)			,
	[nominee2SpouseName]		[nvarchar](50)			,
	[nominee2Relation]			[nvarchar](50)			,
	[nominee2Percentage]		[nvarchar](50)			,
	[nominee2Image]				[image]					,
	[nominee2Signature]			[image]					,
	--[period] [nvarchar](50) NOT NULL,
	--[profitRate] [nvarchar](50) NOT NULL,
	--[paymentFrequency] [nvarchar](50) NOT NULL,
	--[sector] [nvarchar](50) NOT NULL,
	--[rating] [nvarchar](50) NOT NULL,
	--[collectedBy] [nvarchar](50) NOT NULL,
	--[comission] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblSingle] PRIMARY KEY CLUSTERED 
(
	[singleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





-----Login Table-------
CREATE TABLE [tblLoginMst](
	[loginID]			[int]			IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[loginUserName]		[varchar](50)	NOT NULL,
	[loginPassword]		[nvarchar](100) NOT NULL,
	[logerFullName]		[varchar](50)	NOT NULL,
	[logerAddress]		[varchar](50)	NOT NULL,
	[logerEmail]		[varchar](50)	NOT NULL
	)

----Procedure----
drop procedure spInsertSingle;

create procedure spInsertSingle
@depositScheme			[nvarchar](50)			,@depositDate			[datetime]				,
@tdrSlNo				[nvarchar](50)			,@accountNumber			[nvarchar](50)			,
@clientName				[nvarchar](50)			,@fatherName			[nvarchar](50)			,
@motherName				[nvarchar](50)			,@spouseName			[nvarchar](50)			,
@DOB					[datetime]				,@sex					[nvarchar](50)			,
@religion				[nvarchar](50)			,@nationality			[nvarchar](50)			,
@id						[nvarchar](50)			,@idNo					[nvarchar](150)			,
@occupation				[nvarchar](100)			,@organization			[nvarchar](150)			,
@designation			[nvarchar](50)			,@officeAddress			[nvarchar](200)			,
@presentAddress 		[nvarchar](200)			,@permAddress			[nvarchar](50)			,
@phone					[nvarchar](150)			,@mobile				[nvarchar](150)			,
@email					[nvarchar](150)			,@fax					[nvarchar](150)			,
@depAmount				[nvarchar](200)			,@depTenure				[nvarchar](150)			,
@depDateIssue			[datetime]				,@depDateMaturity		[datetime]				,
@cheqPoDDNo				[nvarchar](50)			,@cheqDate				[datetime]				,
@cheqBank				[nvarchar](150)			,@cheqBranch			[nvarchar](50)			,
@cheqTakaInWrd			[nvarchar](50)			,@sourceFunds			[nvarchar](150)			,
@interestRate			[nvarchar](100)			,@nameRM				[nvarchar](50)			,
@nominee1				[nvarchar](50)			,@nominee1FatherName	[nvarchar](50)			,
@nominee1MotherName		[nvarchar](50)			,@nominee1SpouseName	[nvarchar](50)			,
@nominee1Relation		[nvarchar](50)			,@nominee1Percentage	[nvarchar](50)			,
@nominee1Image			[image]					,@nominee1Signature		[image]					,
@nominee2				[nvarchar](50)			,@nominee2FatherName	[nvarchar](50)			,
@nominee2MotherName		[nvarchar](50)			,@nominee2SpouseName	[nvarchar](50)			,
@nominee2Relation		[nvarchar](50)			,@nominee2Percentage	[nvarchar](50)			,
@nominee2Image			[image]					,@nominee2Signature		[image]										
as
begin
insert into tblSingle(depositScheme,depositDate,tdrSlNo,accountNumber,clientName,fatherName,motherName,spouseName,DOB,religion,
sex,nationality,id,idNo,occupation,organization,designation,officeAddress,presentAddress,permAddress,phone,mobile,email,fax,depAmount,
depTenure,depDateIssue,depDateMaturity,cheqPoDDNo,cheqDate,cheqBank,cheqBranch,cheqTakaInWrd,sourceFunds,
interestRate,nameRM,nominee1,nominee1FatherName,nominee1MotherName,nominee1SpouseName,nominee1Relation,nominee1Percentage,
nominee1Image,nominee1Signature,nominee2,nominee2FatherName,nominee2MotherName,nominee2SpouseName,nominee2Relation,nominee2Percentage,
nominee2Image,nominee2Signature)
values
(@depositScheme,@depositDate,@tdrSlNo,@accountNumber,@clientName,@fatherName,@motherName,@spouseName,@DOB,@religion,@sex,@nationality,@id,@idNo,
@occupation,@organization,@designation,@officeAddress,@presentAddress,@permAddress,@phone,@mobile,@email,@fax,@depAmount,@depTenure,@depDateIssue,
@depDateMaturity,@cheqPoDDNo,@cheqDate,@cheqBank,@cheqBranch,@cheqTakaInWrd,@sourceFunds,@interestRate,@nameRM,@nominee1,@nominee1FatherName,
@nominee1MotherName,@nominee1SpouseName,@nominee1Relation,@nominee1Percentage,@nominee1Image,@nominee1Signature,@nominee2,@nominee2FatherName,
@nominee2MotherName,@nominee2SpouseName,@nominee2Relation,@nominee2Percentage,@nominee2Image,@nominee2Signature)
end



create procedure spSingleReport(
@tdrSlNo 
as
select * from tblSingle where tdrSlNo=@tdrSlNo
end

select * from tblSingle where tdrSlNo='0036/14'
