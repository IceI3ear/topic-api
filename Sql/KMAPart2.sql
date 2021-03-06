USE [KMA_DBS]
GO
ALTER TABLE [dbo].[WebRedirects] DROP CONSTRAINT [FK_WebRedirects_WebModules]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_UserId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[WebModules] DROP CONSTRAINT [FK_WebModules_ContentTypes]
GO
ALTER TABLE [dbo].[WebContentUploads] DROP CONSTRAINT [FK_WebContentUploads_WebContentUploads1]
GO
ALTER TABLE [dbo].[WebContents] DROP CONSTRAINT [FK_WebContents_WebModules]
GO
ALTER TABLE [dbo].[WebContentCategories] DROP CONSTRAINT [FK_WebContentCategories_WebContents]
GO
ALTER TABLE [dbo].[WebContentCategories] DROP CONSTRAINT [FK_WebContentCategories_WebCategories]
GO
ALTER TABLE [dbo].[WebCategories] DROP CONSTRAINT [FK_WebCategories_WebCategories]
GO
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [FK_UserProfile_Specialitys]
GO
ALTER TABLE [dbo].[Topics] DROP CONSTRAINT [FK_Topics_UserProfile]
GO
ALTER TABLE [dbo].[Topics] DROP CONSTRAINT [FK_Topics_Specialitys]
GO
ALTER TABLE [dbo].[RegisterTopics] DROP CONSTRAINT [FK_RegisterTopics_Specialitys]
GO
ALTER TABLE [dbo].[RegisterTopics] DROP CONSTRAINT [FK_RegisterTopic_UserProfile]
GO
ALTER TABLE [dbo].[ModuleNavigations] DROP CONSTRAINT [FK_ModuleNavigations_WebModules]
GO
ALTER TABLE [dbo].[ModuleNavigations] DROP CONSTRAINT [FK_ModuleNavigations_Navigations]
GO
ALTER TABLE [dbo].[ContentRelateds] DROP CONSTRAINT [FK_ContentRelateds_WebContents1]
GO
ALTER TABLE [dbo].[ContentRelateds] DROP CONSTRAINT [FK_ContentRelateds_WebContents]
GO
ALTER TABLE [dbo].[ContentImages] DROP CONSTRAINT [FK_ContentImages_WebContents]
GO
ALTER TABLE [dbo].[Classes] DROP CONSTRAINT [FK_Classes_Specialitys]
GO
ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [FK_AspNetUsers_Classes]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[Advertisements] DROP CONSTRAINT [FK_Advertisements_AdvertisementPositions1]
GO
ALTER TABLE [dbo].[AdminSites] DROP CONSTRAINT [FK_AdminSites_AdminSites]
GO
ALTER TABLE [dbo].[AccessWebModules] DROP CONSTRAINT [FK_AccessWebModules_WebModules]
GO
ALTER TABLE [dbo].[AccessWebModules] DROP CONSTRAINT [FK_AccessWebModules_UserProfile]
GO
ALTER TABLE [dbo].[AccessAdminSites] DROP CONSTRAINT [FK_AccessPermissions_UserProfile]
GO
ALTER TABLE [dbo].[AccessAdminSites] DROP CONSTRAINT [FK_AccessPermissions_AdminSites]
GO
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___Passw__160F4887]
GO
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___IsCon__151B244E]
GO
ALTER TABLE [dbo].[SubscribeNotices] DROP CONSTRAINT [DF__Subscribe__Modif__74AE54BC]
GO
ALTER TABLE [dbo].[SubscribeNotices] DROP CONSTRAINT [DF__Subscribe__Creat__73BA3083]
GO
/****** Object:  Index [UQ__webpages__8A2B61603027F0EA]    Script Date: 14/10/2021 12:21:29 AM ******/
ALTER TABLE [dbo].[webpages_Roles] DROP CONSTRAINT [UQ__webpages__8A2B61603027F0EA]
GO
/****** Object:  Table [dbo].[WebSlides]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebSlides]') AND type in (N'U'))
DROP TABLE [dbo].[WebSlides]
GO
/****** Object:  Table [dbo].[WebSimpleContents]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebSimpleContents]') AND type in (N'U'))
DROP TABLE [dbo].[WebSimpleContents]
GO
/****** Object:  Table [dbo].[WebRedirects]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRedirects]') AND type in (N'U'))
DROP TABLE [dbo].[WebRedirects]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_UsersInRoles]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Roles]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_OAuthMembership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_OAuthMembership]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Membership]
GO
/****** Object:  Table [dbo].[WebModules]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebModules]') AND type in (N'U'))
DROP TABLE [dbo].[WebModules]
GO
/****** Object:  Table [dbo].[WebContentUploads]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebContentUploads]') AND type in (N'U'))
DROP TABLE [dbo].[WebContentUploads]
GO
/****** Object:  Table [dbo].[WebContents]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebContents]') AND type in (N'U'))
DROP TABLE [dbo].[WebContents]
GO
/****** Object:  Table [dbo].[WebContentCategories]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebContentCategories]') AND type in (N'U'))
DROP TABLE [dbo].[WebContentCategories]
GO
/****** Object:  Table [dbo].[WebContacts]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebContacts]') AND type in (N'U'))
DROP TABLE [dbo].[WebContacts]
GO
/****** Object:  Table [dbo].[WebConfigs]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebConfigs]') AND type in (N'U'))
DROP TABLE [dbo].[WebConfigs]
GO
/****** Object:  Table [dbo].[WebCategories]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebCategories]') AND type in (N'U'))
DROP TABLE [dbo].[WebCategories]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[UploadFiles]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UploadFiles]') AND type in (N'U'))
DROP TABLE [dbo].[UploadFiles]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Topics]') AND type in (N'U'))
DROP TABLE [dbo].[Topics]
GO
/****** Object:  Table [dbo].[SubscribeNotices]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubscribeNotices]') AND type in (N'U'))
DROP TABLE [dbo].[SubscribeNotices]
GO
/****** Object:  Table [dbo].[Specialitys]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specialitys]') AND type in (N'U'))
DROP TABLE [dbo].[Specialitys]
GO
/****** Object:  Table [dbo].[RegisterTopics]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegisterTopics]') AND type in (N'U'))
DROP TABLE [dbo].[RegisterTopics]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provinces]') AND type in (N'U'))
DROP TABLE [dbo].[Provinces]
GO
/****** Object:  Table [dbo].[ProgressOfTopics]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProgressOfTopics]') AND type in (N'U'))
DROP TABLE [dbo].[ProgressOfTopics]
GO
/****** Object:  Table [dbo].[Navigations]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Navigations]') AND type in (N'U'))
DROP TABLE [dbo].[Navigations]
GO
/****** Object:  Table [dbo].[ModuleNavigations]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModuleNavigations]') AND type in (N'U'))
DROP TABLE [dbo].[ModuleNavigations]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Districts]') AND type in (N'U'))
DROP TABLE [dbo].[Districts]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Countries]') AND type in (N'U'))
DROP TABLE [dbo].[Countries]
GO
/****** Object:  Table [dbo].[ContentTypes]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContentTypes]') AND type in (N'U'))
DROP TABLE [dbo].[ContentTypes]
GO
/****** Object:  Table [dbo].[ContentRelateds]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContentRelateds]') AND type in (N'U'))
DROP TABLE [dbo].[ContentRelateds]
GO
/****** Object:  Table [dbo].[ContentImages]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContentImages]') AND type in (N'U'))
DROP TABLE [dbo].[ContentImages]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Classes]') AND type in (N'U'))
DROP TABLE [dbo].[Classes]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[Advertisements]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Advertisements]') AND type in (N'U'))
DROP TABLE [dbo].[Advertisements]
GO
/****** Object:  Table [dbo].[AdvertisementPositions]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdvertisementPositions]') AND type in (N'U'))
DROP TABLE [dbo].[AdvertisementPositions]
GO
/****** Object:  Table [dbo].[AdminSites]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminSites]') AND type in (N'U'))
DROP TABLE [dbo].[AdminSites]
GO
/****** Object:  Table [dbo].[AccessWebModules]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessWebModules]') AND type in (N'U'))
DROP TABLE [dbo].[AccessWebModules]
GO
/****** Object:  Table [dbo].[AccessWebModuleRole]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessWebModuleRole]') AND type in (N'U'))
DROP TABLE [dbo].[AccessWebModuleRole]
GO
/****** Object:  Table [dbo].[AccessLogs]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessLogs]') AND type in (N'U'))
DROP TABLE [dbo].[AccessLogs]
GO
/****** Object:  Table [dbo].[AccessAdminSites]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessAdminSites]') AND type in (N'U'))
DROP TABLE [dbo].[AccessAdminSites]
GO
/****** Object:  Table [dbo].[AccessAdminSiteRole]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessAdminSiteRole]') AND type in (N'U'))
DROP TABLE [dbo].[AccessAdminSiteRole]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14/10/2021 12:21:29 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessAdminSiteRole]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessAdminSiteRole](
	[RoleId] [int] NOT NULL,
	[AdminSiteID] [int] NOT NULL,
 CONSTRAINT [PK_AccessAdminSitesRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[AdminSiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessAdminSites]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessAdminSites](
	[UserId] [int] NOT NULL,
	[AdminSiteID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessLogs]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessLogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[Action] [nvarchar](255) NULL,
 CONSTRAINT [PK_AccessLogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessWebModuleRole]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessWebModuleRole](
	[RoleId] [int] NOT NULL,
	[WebModuleID] [int] NOT NULL,
	[View] [bit] NULL,
	[Add] [bit] NULL,
	[Edit] [bit] NULL,
	[Delete] [bit] NULL,
 CONSTRAINT [PK_AccessWebModulesRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[WebModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessWebModules]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessWebModules](
	[UserId] [int] NOT NULL,
	[WebModuleID] [int] NOT NULL,
	[View] [bit] NULL,
	[Add] [bit] NULL,
	[Edit] [bit] NULL,
	[Delete] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminSites]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminSites](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Url] [nvarchar](255) NULL,
	[ParentID] [int] NULL,
	[AccessKey] [varchar](50) NULL,
	[Order] [int] NULL,
	[Img] [nvarchar](255) NULL,
	[ImgActive] [nvarchar](255) NULL,
 CONSTRAINT [PK_AdminSites] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvertisementPositions]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertisementPositions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [varchar](255) NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_AdvertisementPositions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advertisements]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisements](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Media] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[Target] [varchar](50) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[AdvertisementPositionID] [int] NULL,
	[Culture] [nvarchar](50) NULL,
	[Video] [nvarchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Advertisements] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](255) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordHash] [nvarchar](max) NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
	[DateBorn] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ClassID] [int] NULL,
	[FullName] [nvarchar](255) NULL,
	[Type] [int] NULL,
	[TeacherID] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[SpecialityID] [int] NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentImages]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentImages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Order] [int] NULL,
	[Slide] [bit] NULL,
	[WebContentID] [int] NULL,
 CONSTRAINT [PK_ContentImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentRelateds]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentRelateds](
	[MainID] [int] NOT NULL,
	[RelatedID] [int] NOT NULL,
	[Order] [int] NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContentRelateds] PRIMARY KEY CLUSTERED 
(
	[MainID] ASC,
	[RelatedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTypes]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTypes](
	[ID] [varchar](50) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Controller] [nvarchar](255) NULL,
	[Order] [int] NULL,
	[Entity] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[IsoCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[ID] [varchar](20) NOT NULL,
	[DistrictName] [nvarchar](191) NOT NULL,
	[ProvinceID] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [varchar](10) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Published] [bit] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuleNavigations]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleNavigations](
	[WebModuleID] [int] NOT NULL,
	[NavigationID] [int] NOT NULL,
 CONSTRAINT [PK_ModuleNavigations] PRIMARY KEY CLUSTERED 
(
	[WebModuleID] ASC,
	[NavigationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Navigations]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Order] [int] NULL,
	[Key] [varchar](50) NULL,
 CONSTRAINT [PK_Navigations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgressOfTopics]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgressOfTopics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TopicID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Atitule] [int] NULL,
	[Effort] [int] NULL,
	[Complete] [int] NULL,
	[Point] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[LinkFile] [nvarchar](255) NULL,
 CONSTRAINT [PK_ProgressOfTopics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ID] [varchar](20) NOT NULL,
	[ProvinceName] [nvarchar](191) NOT NULL,
	[CountryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterTopics]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterTopics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TopicName] [nvarchar](255) NULL,
	[UserID] [int] NULL,
	[StudentID] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[FileLink] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[ConfirmDate] [datetime] NULL,
	[LinkFile] [nvarchar](255) NULL,
	[SpecialityID] [int] NULL,
 CONSTRAINT [PK_RegisterTopic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialitys]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialitys](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Specialitys] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscribeNotices]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscribeNotices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[StudentID] [nvarchar](255) NULL,
	[TopicName] [nvarchar](255) NULL,
	[FileLink] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StartRegister] [datetime] NULL,
	[EndRegister] [datetime] NULL,
	[LinkFile] [nvarchar](255) NULL,
	[SpecialityID] [int] NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadFiles]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadFiles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Link] [varchar](max) NULL,
 CONSTRAINT [PK_UploadFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Mobile] [nvarchar](255) NULL,
	[Avatar] [nvarchar](255) NULL,
	[BranchID] [int] NULL,
	[Position] [nvarchar](50) NULL,
	[DateBorn] [datetime] NULL,
	[SpecialityID] [int] NULL,
 CONSTRAINT [PK__UserProf__1788CC4CC234D91B] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebCategories]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[Body] [ntext] NULL,
	[MetaTitle] [nvarchar](255) NULL,
	[MetaKeywords] [nvarchar](500) NULL,
	[MetaDescription] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[Order] [int] NULL,
	[CType] [int] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_WebCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebConfigs]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebConfigs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Key] [varchar](50) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_WebConfigs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebContacts]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebContacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Body] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Mobile] [nvarchar](255) NULL,
	[Address] [nvarchar](500) NULL,
	[CreatedDate] [date] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[LoaiDonHang] [int] NULL,
	[LoaiLienHe] [int] NULL,
	[WebModuleID] [int] NULL,
 CONSTRAINT [PK_WebContacts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebContentCategories]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebContentCategories](
	[WebCategoryID] [int] NOT NULL,
	[WebContentID] [int] NOT NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_WebContentCategories] PRIMARY KEY CLUSTERED 
(
	[WebCategoryID] ASC,
	[WebContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebContents]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebContents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[Body] [ntext] NULL,
	[Link] [nvarchar](255) NULL,
	[WebModuleID] [int] NULL,
	[MetaTitle] [nvarchar](255) NULL,
	[MetaKeywords] [nvarchar](500) NULL,
	[MetaDescription] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[Order] [int] NULL,
	[UID] [nvarchar](255) NULL,
	[LinkVideo] [nvarchar](255) NULL,
	[Event] [datetime] NULL,
	[SeoTitle] [nvarchar](255) NULL,
	[Icon] [nvarchar](255) NULL,
	[CountView] [decimal](18, 0) NULL,
	[PublishDate] [datetime] NULL,
 CONSTRAINT [PK_WebContents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebContentUploads]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebContentUploads](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[MetaTitle] [nvarchar](255) NULL,
	[FullPath] [nvarchar](255) NULL,
	[UID] [nvarchar](255) NULL,
	[FolderID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[MimeType] [nvarchar](255) NULL,
 CONSTRAINT [PK_WebContentImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebModules]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebModules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Body] [ntext] NULL,
	[Image] [nvarchar](255) NULL,
	[ParentID] [int] NULL,
	[ContentTypeID] [varchar](50) NULL,
	[URL] [nvarchar](255) NULL,
	[SeoTitle] [nvarchar](255) NULL,
	[MetaTitle] [nvarchar](255) NULL,
	[MetaKeywords] [nvarchar](500) NULL,
	[MetaDescription] [nvarchar](500) NULL,
	[Order] [int] NULL,
	[UID] [nvarchar](255) NULL,
	[IndexView] [nvarchar](255) NULL,
	[IndexLayout] [nvarchar](255) NULL,
	[PublishIndexView] [nvarchar](255) NULL,
	[PublishIndexLayout] [nvarchar](255) NULL,
	[PublishDetailView] [nvarchar](255) NULL,
	[PublishDetailLayout] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[SubQuerys] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[ShowOnMenu] [bit] NULL,
	[ShowOnAdmin] [bit] NULL,
	[Culture] [nvarchar](50) NULL,
	[Icon] [nvarchar](255) NULL,
	[CodeColor] [nvarchar](255) NULL,
	[ActiveArticle] [nvarchar](255) NULL,
	[Target] [nvarchar](255) NULL,
	[Img] [nvarchar](255) NULL,
	[ImgActive] [nvarchar](255) NULL,
 CONSTRAINT [PK_WebModules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
 CONSTRAINT [PK__webpages__1788CC4C1FCF8010] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebRedirects]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebRedirects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](255) NULL,
	[WebModuleID] [int] NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TimeRedirect] [int] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_WebRedirects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebSimpleContents]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebSimpleContents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Key] [nvarchar](255) NOT NULL,
	[Body] [ntext] NULL,
	[MetaTitle] [nvarchar](255) NULL,
	[MetaKeywords] [nvarchar](500) NULL,
	[MetaDescription] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[Culture] [nvarchar](50) NULL,
 CONSTRAINT [PK_WebSimpleContents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebSlides]    Script Date: 14/10/2021 12:21:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebSlides](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[MetaTitle] [nvarchar](255) NULL,
	[MetaKeywords] [nvarchar](500) NULL,
	[MetaDescription] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[Target] [varchar](50) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[Order] [int] NULL,
	[Culture] [nvarchar](50) NULL,
 CONSTRAINT [PK_WebSlides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210524154912_Initial', N'5.0.6')
GO
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1036)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1037)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1038)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1039)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1040)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1041)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1042)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1043)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1044)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (2, 1045)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (3, 1039)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (3, 1040)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (4, 9)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (4, 14)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (4, 20)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (4, 21)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (4, 22)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (4, 23)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (5, 1036)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (5, 1043)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (6, 1038)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (6, 1039)
INSERT [dbo].[AccessAdminSiteRole] ([RoleId], [AdminSiteID]) VALUES (6, 1040)
GO
SET IDENTITY_INSERT [dbo].[AccessLogs] ON 

INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (1, N'Entity: Role, Item: 2: Administrators', CAST(N'2014-01-23T21:40:31.100' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (2, N'Entity: Role, Item: 2: Administrators', CAST(N'2014-01-23T21:40:41.570' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (3, N'Entity: Role, Item: 3: Tổng biên tập', CAST(N'2020-08-01T18:23:01.610' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (4, N'Entity: Role, Item: 4: Người viết bài', CAST(N'2020-08-01T18:23:10.050' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (5, N'Entity: Role, Item: 5: Kế toán', CAST(N'2020-12-08T10:13:27.590' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (6, N'Entity: Role, Item: 6: Usertest', CAST(N'2020-12-08T14:35:11.887' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (7, N'Entity: Role, Item: 7: Usertest1', CAST(N'2020-12-24T15:25:11.537' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (8, N'Entity: Role, Item: 7: Usertest1', CAST(N'2020-12-24T16:09:34.810' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (9, N'Entity: Role, Item: 7: Usertest2', CAST(N'2020-12-24T16:09:41.347' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10, N'Entity: Role, Item: 8: Usertest1', CAST(N'2020-12-24T16:11:17.490' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (11, N'Entity: Role, Item: 8: Usertest1', CAST(N'2020-12-24T16:11:23.807' AS DateTime), N'1:admin', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (12, N'Entity: Role, Item: 7: Usertest1', CAST(N'2020-12-24T16:12:21.977' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (13, N'Entity: Role, Item: 2: Administrator', CAST(N'2021-01-03T23:25:50.453' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (14, N'Entity: Role, Item: 2: Admin', CAST(N'2021-01-03T23:26:29.273' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (15, N'Entity: Role, Item: 6: Usertest', CAST(N'2021-01-08T00:54:15.853' AS DateTime), N'15:0886081230', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (16, N'Entity: Role, Item: 7: Usertest1', CAST(N'2021-01-08T00:54:24.537' AS DateTime), N'15:0886081230', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (17, N'Entity: Role, Item: 3: Tổng biên tập', CAST(N'2021-01-08T01:20:10.557' AS DateTime), N'1:admin', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (18, N'Entity: Role, Item: 4: Người viết bài', CAST(N'2021-01-08T01:20:29.930' AS DateTime), N'1:admin', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (19, N'Entity: Role, Item: 9: Lái xe', CAST(N'2021-01-08T01:21:07.917' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10015, N'Entity: Role, Item: 1009: 1', CAST(N'2021-01-24T17:21:29.130' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10016, N'Entity: Role, Item: 1009: 1', CAST(N'2021-01-24T17:21:34.397' AS DateTime), N'1:admin', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10017, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-25T01:41:44.167' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10018, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-25T10:49:40.383' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10019, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-25T11:11:06.597' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10020, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-25T11:11:21.260' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10021, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-25T11:12:20.357' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10022, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-25T11:13:03.453' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10023, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-28T13:37:53.047' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10024, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-01-28T13:38:19.027' AS DateTime), N'1:admin', N'Edit')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10025, N'Entity: Role, Item: 1010: KH1', CAST(N'2021-02-26T22:05:45.187' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10026, N'Entity: Role, Item: 5: Kế toán', CAST(N'2021-09-13T15:16:31.680' AS DateTime), N'1:admin', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10027, N'Entity: Role, Item: 9: Lái xe', CAST(N'2021-09-13T15:16:34.250' AS DateTime), N'1:admin', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10028, N'Entity: Role, Item: 1010: KH1', CAST(N'2021-09-13T15:16:36.110' AS DateTime), N'1:admin', N'Delete')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10029, N'Entity: Role, Item: 1011: Teacher', CAST(N'2021-09-13T15:17:10.180' AS DateTime), N'1:admin', N'Add')
INSERT [dbo].[AccessLogs] ([ID], [Title], [CreatedDate], [CreatedBy], [Action]) VALUES (10030, N'Entity: Role, Item: 2: Administrators', CAST(N'2021-09-13T15:17:21.323' AS DateTime), N'1:admin', N'Edit')
SET IDENTITY_INSERT [dbo].[AccessLogs] OFF
GO
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1, 1086, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1, 1087, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 2, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 3, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 4, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 9, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 10, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 11, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 12, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 13, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 14, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 15, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 16, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 17, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 18, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 19, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 20, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 21, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 22, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 23, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 24, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 25, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 26, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 27, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 28, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 29, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 30, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 31, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 32, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 33, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 34, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 35, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 36, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 37, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 38, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 39, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 40, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 41, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 42, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 44, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 45, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 46, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 47, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 48, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 49, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 50, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 51, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 52, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 53, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 54, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 55, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 56, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 57, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 58, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 59, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 60, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 61, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 62, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 63, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 64, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 65, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 66, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 68, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 69, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 70, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 71, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 72, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 74, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 75, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 79, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 80, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 81, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 82, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 83, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 86, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 87, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 88, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 89, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 90, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 91, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 92, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 93, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1086, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1087, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1088, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1089, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1090, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1091, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1092, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1093, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1094, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1095, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1096, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1097, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1098, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1099, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (2, 1100, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 2, 1, 1, 1, 1)
GO
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 3, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 4, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 9, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 10, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 11, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 12, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 13, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 14, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 15, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 16, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 17, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 18, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 19, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 20, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 21, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 22, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 23, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 24, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 25, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 26, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 27, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 28, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 29, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 30, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 31, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 32, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 33, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 34, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 35, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 36, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 37, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 38, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 39, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 40, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 41, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 42, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 44, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 45, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 46, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 47, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 48, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 49, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 50, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 51, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 52, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 53, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 54, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 55, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 56, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 57, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 58, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 59, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 60, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 61, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 62, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 63, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 64, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 65, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 66, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 82, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 87, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 89, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (3, 90, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 2, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 3, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 4, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 9, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 10, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 11, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 12, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 13, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 14, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 15, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 16, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 17, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 18, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 19, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 20, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 21, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 22, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 23, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 24, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 25, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 26, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 27, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 28, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 29, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 30, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 31, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 32, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 33, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 34, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 35, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 36, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 37, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 38, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 39, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 40, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 41, 1, 1, 1, 1)
GO
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 42, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 44, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 45, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 46, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 47, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 48, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 49, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 50, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 51, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 52, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 53, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 54, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 55, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 56, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 57, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 58, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 59, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 60, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 61, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 62, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 63, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 64, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 65, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 66, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (4, 83, 1, 1, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 2, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 3, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 4, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 9, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 10, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 11, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 12, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 13, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 14, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 15, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 16, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 17, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 18, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 19, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 20, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 21, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 22, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 23, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 24, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 25, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 26, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 27, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 28, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 29, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 30, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 31, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 32, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 33, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 34, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 35, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 36, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 37, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 38, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 39, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 40, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 41, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 42, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 44, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 45, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 46, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 47, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 48, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 49, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 50, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 51, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 52, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 53, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 54, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 55, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 56, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 57, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 58, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 86, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 88, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 89, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 93, 1, 0, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (5, 1086, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 1, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 2, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 3, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 4, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 9, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 10, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 11, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 12, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 13, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 14, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 15, 1, 1, 1, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 16, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 17, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 18, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 19, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 20, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 21, 0, 0, 0, 0)
GO
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 22, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 23, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 24, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 25, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 26, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 27, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 28, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 29, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 30, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 31, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 32, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 33, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 34, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 35, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 36, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 37, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 38, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 39, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 40, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 41, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 42, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 44, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 45, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 46, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 47, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 48, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 49, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 50, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 51, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 52, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 53, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 54, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 55, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 56, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 57, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 58, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 86, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 89, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (6, 90, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (9, 87, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1010, 87, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1010, 88, 0, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1010, 89, 1, 0, 0, 0)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1010, 90, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1010, 91, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1010, 92, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1011, 88, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1011, 1097, 1, 1, 1, 1)
INSERT [dbo].[AccessWebModuleRole] ([RoleId], [WebModuleID], [View], [Add], [Edit], [Delete]) VALUES (1011, 1098, 1, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[AdminSites] ON 

INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1036, N'Bảng kê', NULL, N'/admin/Enumeration', NULL, NULL, 3, N'/Content/themes/admin/img/Vector-bangke.png', N'/Content/themes/admin/img/Vector-bangkeActive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1037, N'Tổng Quan', NULL, N'/admin', NULL, NULL, 1, N'/Content/themes/admin/img/Vector-tongquan.png', N'/Content/themes/admin/img/Vector-tongquanactive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1038, N'Kế hoạch chạy xe', NULL, N'/admin/driveplan', NULL, NULL, 2, N'/Content/themes/admin/img/Vector-kehoach.png', N'/Content/themes/admin/img/Vector-kehoachactive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1039, N'Quản lý đối tác', NULL, N'/admin/ManagePartner', NULL, NULL, 4, N'/Content/themes/admin/img/Vector-quanly.png', N'/Content/themes/admin/img/Vector-quanlyActive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1040, N'Quản lý xe', NULL, N'/admin/ManageCar', NULL, NULL, 5, N'/Content/themes/admin/img/Vector-xe.png', N'/Content/themes/admin/img/Vector-xeActive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1041, N'Quản lý địa điểm', NULL, N'/admin/ManageAddress', NULL, NULL, 6, N'/Content/themes/admin/img/Vector-diadiem.png', N'/Content/themes/admin/img/Vector-diadiemActive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1042, N'Quản lý lộ trình', NULL, N'/admin/ManageRoute', NULL, NULL, 7, N'/Content/themes/admin/img/Vector-lotrinh.png', N'/Content/themes/admin/img/Vector-lotrinhActive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1043, N'Quản lý bảng giá', NULL, N'/admin/ManagePriceList', NULL, NULL, 8, N'/Content/themes/admin/img/Vector-banggia.png', N'/Content/themes/admin/img/Vector-bangiaActive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1044, N'Phân Quyền', NULL, N'/admin/Role', NULL, NULL, 9, N'/Content/themes/admin/img/Vector-phanquyen.png', N'/Content/themes/admin/img/Vector-phanquyenActive.png')
INSERT [dbo].[AdminSites] ([ID], [Title], [Description], [Url], [ParentID], [AccessKey], [Order], [Img], [ImgActive]) VALUES (1045, N'Người Dùng', NULL, N'/admin/user', NULL, NULL, 10, N'/Content/themes/admin/img/Vector-nguoidung.png', N'/Content/themes/admin/img/Vector-nguoidungActive.png')
SET IDENTITY_INSERT [dbo].[AdminSites] OFF
GO
SET IDENTITY_INSERT [dbo].[AdvertisementPositions] ON 

INSERT [dbo].[AdvertisementPositions] ([ID], [UID], [Title], [Image], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'_adv_chi_tiet', N'Quảng cáo trong trang chi tiết', NULL, NULL, N'admin', CAST(N'2020-07-11T19:06:33.183' AS DateTime), N'admin', CAST(N'2020-07-11T19:06:33.183' AS DateTime))
INSERT [dbo].[AdvertisementPositions] ([ID], [UID], [Title], [Image], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'_adv_home_news', N'Quảng cáo Trang chủ - Danh sách tin', NULL, NULL, N'admin', CAST(N'2020-07-11T19:07:02.937' AS DateTime), N'admin', CAST(N'2020-07-11T19:07:02.937' AS DateTime))
INSERT [dbo].[AdvertisementPositions] ([ID], [UID], [Title], [Image], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'_banner_center_home', N'Banner giữa trang chủ', NULL, NULL, N'admin', CAST(N'2020-07-12T12:25:23.450' AS DateTime), N'admin', CAST(N'2020-07-12T12:25:23.450' AS DateTime))
INSERT [dbo].[AdvertisementPositions] ([ID], [UID], [Title], [Image], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'_adv_banner_home', N'Banner tại trang chủ', NULL, NULL, N'admin', CAST(N'2020-07-12T23:38:43.403' AS DateTime), N'admin', CAST(N'2020-07-12T23:38:43.403' AS DateTime))
INSERT [dbo].[AdvertisementPositions] ([ID], [UID], [Title], [Image], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'_adv_home_news_bottom', N'Quảng cáo Trang chủ - Danh sách tin (dưới facebook)', NULL, NULL, N'admin', CAST(N'2020-07-14T22:20:55.533' AS DateTime), N'admin', CAST(N'2020-07-14T22:20:55.533' AS DateTime))
SET IDENTITY_INSERT [dbo].[AdvertisementPositions] OFF
GO
SET IDENTITY_INSERT [dbo].[Advertisements] ON 

INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (18, N'Landmark', NULL, N'/uploads/072020/html__0011_Layer-35_4f188521.png', N'http://www.landmark72.com/', N'_self', N'admin', CAST(N'2020-07-11T19:08:16.820' AS DateTime), N'admin', CAST(N'2020-07-27T16:04:17.903' AS DateTime), 4, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (19, N'Kem', NULL, N'/uploads/072020/html__0010_Layer-38_f3607114.png', N'http://www.kidofoods.vn/kem/merino', N'_self', N'admin', CAST(N'2020-07-11T19:08:25.687' AS DateTime), N'admin', CAST(N'2020-07-27T16:04:51.930' AS DateTime), 4, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (20, N'Điện thoại', NULL, N'/uploads/072020/html__0009_Layer-39_e34979b8.png', N'https://www.samsung.com/vn/smartphones/galaxy-s20/models/', N'_self', N'admin', CAST(N'2020-07-11T19:08:32.963' AS DateTime), N'admin', CAST(N'2020-07-27T16:05:14.870' AS DateTime), 4, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (24, N'QC', NULL, N'/uploads/082020/4179.jpg_wh860_861e37d7.png', N'#', N'_self', N'admin', CAST(N'2020-07-12T13:23:06.350' AS DateTime), N'admin', CAST(N'2020-11-02T17:51:48.840' AS DateTime), 6, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (25, N'Banner trang chủ', NULL, N'/uploads/102020/banner2_13bcf4f0.jpg', N'#', N'_self', N'admin', CAST(N'2020-07-12T23:39:19.307' AS DateTime), N'admin', CAST(N'2020-10-08T15:49:06.913' AS DateTime), 7, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (28, N'Hồ sơ tư liệu', NULL, N'/uploads/072020/HSTL_7b2f91f2.png', N'/ho-so-tu-lieu-52', N'_self', N'admin', CAST(N'2020-07-17T11:25:48.577' AS DateTime), N'admin', CAST(N'2020-07-27T13:40:05.763' AS DateTime), 5, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (30, N'Liên hệ quảng cáo', NULL, N'/uploads/072020/lien he qc a Bach-02_39bba016.png', N'#', N'_self', N'admin', CAST(N'2020-07-17T11:43:36.557' AS DateTime), N'admin', CAST(N'2020-09-17T12:46:21.553' AS DateTime), 8, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (31, N'Bảo vệ môi trường trong xây dựng nông thôn mới', NULL, N'/uploads/072020/bvmt ntm-01_f99b999f.png', N'/bao-ve-moi-truong-trong-xay-dung-nong-thon-moi-54', N'_self', N'admin', CAST(N'2020-07-17T11:44:39.897' AS DateTime), N'admin', CAST(N'2020-07-27T16:08:58.493' AS DateTime), 8, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (32, N'Landmark 81', NULL, N'/uploads/072020/html__0011_Layer-35_4f188521.png', N'http://www.landmark72.com/', N'_self', N'admin', CAST(N'2020-07-17T11:45:29.230' AS DateTime), N'admin', CAST(N'2020-07-27T16:04:22.020' AS DateTime), 8, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (33, N'Kem', NULL, N'/uploads/072020/html__0010_Layer-38_f3607114.png', N'http://www.kidofoods.vn/kem/merino', N'_self', N'admin', CAST(N'2020-07-17T11:46:19.437' AS DateTime), N'admin', CAST(N'2020-07-27T16:04:48.227' AS DateTime), 8, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (34, N'Điện thoại', NULL, N'/uploads/072020/html__0009_Layer-39_e34979b8.png', N'https://www.samsung.com/vn/smartphones/galaxy-s20/models/', N'_self', N'admin', CAST(N'2020-07-17T11:47:19.743' AS DateTime), N'admin', CAST(N'2020-07-27T16:05:09.590' AS DateTime), 8, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (35, N'Sữa', NULL, N'/uploads/072020/html__0001_Layer-19_e9b6bc0.png', N'http://www.thmilk.vn/th-true-juice.html', N'_self', N'admin', CAST(N'2020-07-17T11:47:33.987' AS DateTime), N'admin', CAST(N'2020-07-27T16:05:46.940' AS DateTime), 8, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (36, N'Sữa', NULL, N'/uploads/072020/html__0001_Layer-19_e9b6bc0.png', N'http://www.thmilk.vn/th-true-juice.html', N'_self', N'admin', CAST(N'2020-07-17T11:51:26.757' AS DateTime), N'admin', CAST(N'2020-07-27T16:05:42.137' AS DateTime), 4, N'vi-VN', NULL, 1)
INSERT [dbo].[Advertisements] ([ID], [Title], [Description], [Media], [Link], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [AdvertisementPositionID], [Culture], [Video], [Status]) VALUES (40, N'Video QC', NULL, NULL, NULL, N'_self', N'admin', CAST(N'2020-09-17T12:46:56.737' AS DateTime), N'admin', CAST(N'2020-09-17T12:46:56.737' AS DateTime), 8, N'vi-VN', N'/uploads/file/092020/mov_bbb_f33b1bd9_87d1abec.mp4', 1)
SET IDENTITY_INSERT [dbo].[Advertisements] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'12', N'CT020101', N'CT020101', N'nguyenvanb@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, N'Đặng Tuấn Anh', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'13', N'CT020102', N'CT020102', N'nguyenvanc@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'Hoàng Đức Anh', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'14', N'CT020103', N'CT020103', N'nguyenvand@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, N'Lưu Trang Anh', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'15', N'CT020104', N'CT020104', N'nguyenvane@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, N'	Phạm Hoàng Anh', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'16', N'CT020105', N'CT020105', N'nguyenvanf@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, N'Phạm Thị Hiền Anh', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'17', N'CT020106', N'CT020106', N'nguyenvang@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, N'Phạm Khắc Việt Anh', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'18', N'CT020107', N'CT020107', N'nguyenvanh@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'Đỗ Hoàng Gia Bảo', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'19', N'CT020108', N'CT020108', N'nguyenvank@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, N'Trần Thị Minh Châu', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'20', N'CT020109', N'CT020109', N'nguyenvanl@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, N'	Tăng Phương Chi', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'21', N'CT020110', N'CT020110', N'nguyenvanm@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, N'Phạm Tiến Dũng', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'22', N'CT020111', N'CT020111', N'nguyenvann@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, N'Nguyễn Thái Dương', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'23', N'CT020112', N'CT020112', N'nguyenvano@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, N'Trần An Dương', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'24', N'CT020113', N'CT020113', N'nguyenvanf@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'Mạc Trung Đức', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'25', N'CT020114', N'CT020114', N'nguyenvang@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, N'Vũ Hương Giang', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'26', N'CT020115', N'CT020115', N'nguyenvanh@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, N'	Nguyễn Thị Ngân Hà', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'27', N'CT020116', N'CT020116', N'nguyenvang@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, N'Nguyễn Lê Hiếu', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'28', N'CT020117', N'CT020117', N'nguyenvanb@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, N'Phạm Xuân Hòa', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'29', N'CT020118', N'CT020118', N'nguyenvanc@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, N'Khoa Minh Hoàng', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'30', N'CT020119', N'CT020119', N'nguyenvand@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, N'Nguyễn Mạnh Hùng', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'31', N'CT020120', N'CT020120', N'nguyenvane@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'Nguyễn Vũ Gia Hưng', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'32', N'CT020121', N'CT020121', N'nguyenvanf@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, N'Trần Tuấn Hưng', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'33', N'CT020122', N'CT020122', N'nguyenvang@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, N'Phạm Gia Minh', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'34', N'CT020123', N'CT020123', N'nguyenvanh@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, N'Đỗ Hoàng Mỹ', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'35', N'CT020124', N'CT020124', N'nguyenvang@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, N'Đỗ Quang Ngọc', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'36', N'CT020125', N'CT020125', N'nguyenvang@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'Đàm Yến Nhi', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'37', N'CT020126', N'CT020126', N'nguyenvanh@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'Đoàn Hoàng Sơn', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'38', N'CT020127', N'CT020127', N'nguyenvank@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'Nguyễn Công Thành', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'39', N'CT020128', N'CT020128', N'nguyenvanl@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'Bùi Phương Thảo', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'3d6766c6-dcb8-4791-b7db-5bfd16674d8e', N'GVCN001', N'GVCN001', N'giaovien01@gmail.com', N'GIAOVIEN01@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKQHP0u8cTW197+s+0dt0v3TQKLgAVh6w5x+LUKhTboz/16pVE7LjIfWRSPpOGnVlA==', N'N6WITJMLCLGCVEB4KO3F5YS7F4JJQLD3', N'7aed1480-b437-4755-8adb-fc1f468bd5fa', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Nguyễn Ngọc Hải', 2, 1027)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'40', N'CT020129', N'CT020129', N'nguyenvanm@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, N'Nguyễn Hương Thảo', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'41', N'CT020130', N'CT020130', N'nguyenvann@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, N'Tô Diệu Thảo', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'42', N'CT020131', N'CT020131', N'nguyenvano@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, N'Vũ Phương Thảo', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'5', N'CT020132', N'CT020132', N'nguyenvana@gmail.com', NULL, 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'U4TT2KJWP7E3ME6QCOGYOW6QS5YKGHWL', N'80f91b94-5227-43d0-81f2-74e893db883e', N'083894321', 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-10T00:00:00.000' AS DateTime), 1, N'	Đặng Thành Trung', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'9ea85397-5628-457c-a86e-b64b210174ba', N'admin1', N'ADMIN1', N'admin1@gmail.com', N'ADMIN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKud1h+bdIhahpgB0eHay5S94OwAmprDdynkdJDWwPNzLmjUTwRxolf5auMr38eR5Q==', N'7U3HAVZFTP7COGJJWXZAWGWEID3BADO5', N'68012571-c889-4c57-9fbc-30ff5e8065e4', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'admin1', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Image], [Address], [DateBorn], [StartDate], [EndDate], [ClassID], [FullName], [Type], [TeacherID]) VALUES (N'e4169eee-7e87-4841-b264-b0459f59363a', N'CT020133', N'CT020133', N'kma31@gmail.com', N'KMA31@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDlS4fT8F618fFL/JLtXvD9HSYlcEau9n6XmNIHi/2B5Rg543EmYL/ZsubHd0gMuSQ==', N'YQLEZOEZEUL5MXZ5FJZZ7NVWZAJ76UGC', N'08dca9c2-a632-46ec-860b-a75f455d5dd7', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Trịnh Thiên Trường', 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (1, N'AT14A', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (2, N'AT14B', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (3, N'AT14C', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (4, N'AT14D', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (5, N'AT14E', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (6, N'AT14F', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (7, N'AT14G', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (8, N'CT2A', 1)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (9, N'CT2B', 1)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (10, N'CT2C', 1)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (11, N'CT2D', 1)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (12, N'DT1A', 3)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (13, N'DT1B', 3)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (14, N'DT1C', 3)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (15, N'AT14K', 2)
INSERT [dbo].[Classes] ([ID], [Name], [SpecialityID]) VALUES (16, N'AT14H', 2)
SET IDENTITY_INSERT [dbo].[Classes] OFF
GO
INSERT [dbo].[ContentTypes] ([ID], [Title], [Description], [Controller], [Order], [Entity]) VALUES (N'Article', N'Bản tin', NULL, N'Article', 4, NULL)
INSERT [dbo].[ContentTypes] ([ID], [Title], [Description], [Controller], [Order], [Entity]) VALUES (N'Contact', N'Contact', NULL, N'Contact', 7, NULL)
INSERT [dbo].[ContentTypes] ([ID], [Title], [Description], [Controller], [Order], [Entity]) VALUES (N'Empty', N'Empty', NULL, N'Empty', 1, NULL)
INSERT [dbo].[ContentTypes] ([ID], [Title], [Description], [Controller], [Order], [Entity]) VALUES (N'Home', N'Trang chủ', NULL, N'Home', 2, NULL)
INSERT [dbo].[ContentTypes] ([ID], [Title], [Description], [Controller], [Order], [Entity]) VALUES (N'OnePage', N'Một trang', NULL, N'OnePage', 5, NULL)
INSERT [dbo].[ContentTypes] ([ID], [Title], [Description], [Controller], [Order], [Entity]) VALUES (N'UploadFilePdf', N'Upload Ấn phẩm', NULL, N'UploadFilePdf', 3, NULL)
INSERT [dbo].[ContentTypes] ([ID], [Title], [Description], [Controller], [Order], [Entity]) VALUES (N'UploadFileVideo', N'Upload ảnh - Video', NULL, N'UploadFileVideo', 6, NULL)
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([ID], [Title], [IsoCode]) VALUES (2, N'Việt Nam', N'vi-VN')
INSERT [dbo].[Countries] ([ID], [Title], [IsoCode]) VALUES (8, N'United States', N'en-US')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'001', N'Quận Ba Đình', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'002', N'Quận Hoàn Kiếm', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'003', N'Quận Tây Hồ', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'004', N'Quận Long Biên', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'005', N'Quận Cầu Giấy', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'006', N'Quận Đống Đa', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'007', N'Quận Hai Bà Trưng', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'008', N'Quận Hoàng Mai', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'009', N'Quận Thanh Xuân', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'016', N'Huyện Sóc Sơn', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'017', N'Huyện Đông Anh', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'018', N'Huyện Gia Lâm', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'019', N'Quận Nam Từ Liêm', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'020', N'Huyện Thanh Trì', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'021', N'Quận Bắc Từ Liêm', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'024', N'Thành phố Hà Giang', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'026', N'Huyện Đồng Văn', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'027', N'Huyện Mèo Vạc', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'028', N'Huyện Yên Minh', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'029', N'Huyện Quản Bạ', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'030', N'Huyện Vị Xuyên', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'031', N'Huyện Bắc Mê', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'032', N'Huyện Hoàng Su Phì', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'033', N'Huyện Xín Mần', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'034', N'Huyện Bắc Quang', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'035', N'Huyện Quang Bình', N'02')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'040', N'Thành phố Cao Bằng', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'042', N'Huyện Bảo Lâm', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'043', N'Huyện Bảo Lạc', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'044', N'Huyện Thông Nông', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'045', N'Huyện Hà Quảng', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'046', N'Huyện Trà Lĩnh', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'047', N'Huyện Trùng Khánh', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'048', N'Huyện Hạ Lang', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'049', N'Huyện Quảng Uyên', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'050', N'Huyện Phục Hòa', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'051', N'Huyện Hòa An', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'052', N'Huyện Nguyên Bình', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'053', N'Huyện Thạch An', N'04')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'058', N'Thành Phố Bắc Kạn', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'060', N'Huyện Pác Nặm', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'061', N'Huyện Ba Bể', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'062', N'Huyện Ngân Sơn', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'063', N'Huyện Bạch Thông', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'064', N'Huyện Chợ Đồn', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'065', N'Huyện Chợ Mới', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'066', N'Huyện Na Rì', N'06')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'070', N'Thành phố Tuyên Quang', N'08')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'071', N'Huyện Lâm Bình', N'08')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'072', N'Huyện Na Hang', N'08')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'073', N'Huyện Chiêm Hóa', N'08')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'074', N'Huyện Hàm Yên', N'08')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'075', N'Huyện Yên Sơn', N'08')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'076', N'Huyện Sơn Dương', N'08')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'080', N'Thành phố Lào Cai', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'082', N'Huyện Bát Xát', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'083', N'Huyện Mường Khương', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'084', N'Huyện Si Ma Cai', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'085', N'Huyện Bắc Hà', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'086', N'Huyện Bảo Thắng', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'087', N'Huyện Bảo Yên', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'088', N'Huyện Sa Pa', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'089', N'Huyện Văn Bàn', N'10')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'094', N'Thành phố Điện Biên Phủ', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'095', N'Thị Xã Mường Lay', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'096', N'Huyện Mường Nhé', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'097', N'Huyện Mường Chà', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'098', N'Huyện Tủa Chùa', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'099', N'Huyện Tuần Giáo', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'100', N'Huyện Điện Biên', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'101', N'Huyện Điện Biên Đông', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'102', N'Huyện Mường Ảng', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'103', N'Huyện Nậm Pồ', N'11')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'105', N'Thành phố Lai Châu', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'106', N'Huyện Tam Đường', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'107', N'Huyện Mường Tè', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'108', N'Huyện Sìn Hồ', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'109', N'Huyện Phong Thổ', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'110', N'Huyện Than Uyên', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'111', N'Huyện Tân Uyên', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'112', N'Huyện Nậm Nhùn', N'12')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'116', N'Thành phố Sơn La', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'118', N'Huyện Quỳnh Nhai', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'119', N'Huyện Thuận Châu', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'120', N'Huyện Mường La', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'121', N'Huyện Bắc Yên', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'122', N'Huyện Phù Yên', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'123', N'Huyện Mộc Châu', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'124', N'Huyện Yên Châu', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'125', N'Huyện Mai Sơn', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'126', N'Huyện Sông Mã', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'127', N'Huyện Sốp Cộp', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'128', N'Huyện Vân Hồ', N'14')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'132', N'Thành phố Yên Bái', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'133', N'Thị xã Nghĩa Lộ', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'135', N'Huyện Lục Yên', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'136', N'Huyện Văn Yên', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'137', N'Huyện Mù Căng Chải', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'138', N'Huyện Trấn Yên', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'139', N'Huyện Trạm Tấu', N'15')
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'140', N'Huyện Văn Chấn', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'141', N'Huyện Yên Bình', N'15')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'148', N'Thành phố Hòa Bình', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'150', N'Huyện Đà Bắc', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'151', N'Huyện Kỳ Sơn', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'152', N'Huyện Lương Sơn', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'153', N'Huyện Kim Bôi', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'154', N'Huyện Cao Phong', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'155', N'Huyện Tân Lạc', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'156', N'Huyện Mai Châu', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'157', N'Huyện Lạc Sơn', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'158', N'Huyện Yên Thủy', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'159', N'Huyện Lạc Thủy', N'17')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'164', N'Thành phố Thái Nguyên', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'165', N'Thành phố Sông Công', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'167', N'Huyện Định Hóa', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'168', N'Huyện Phú Lương', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'169', N'Huyện Đồng Hỷ', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'170', N'Huyện Võ Nhai', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'171', N'Huyện Đại Từ', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'172', N'Thị xã Phổ Yên', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'173', N'Huyện Phú Bình', N'19')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'178', N'Thành phố Lạng Sơn', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'180', N'Huyện Tràng Định', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'181', N'Huyện Bình Gia', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'182', N'Huyện Văn Lãng', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'183', N'Huyện Cao Lộc', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'184', N'Huyện Văn Quan', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'185', N'Huyện Bắc Sơn', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'186', N'Huyện Hữu Lũng', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'187', N'Huyện Chi Lăng', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'188', N'Huyện Lộc Bình', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'189', N'Huyện Đình Lập', N'20')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'193', N'Thành phố Hạ Long', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'194', N'Thành phố Móng Cái', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'195', N'Thành phố Cẩm Phả', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'196', N'Thành phố Uông Bí', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'198', N'Huyện Bình Liêu', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'199', N'Huyện Tiên Yên', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'200', N'Huyện Đầm Hà', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'201', N'Huyện Hải Hà', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'202', N'Huyện Ba Chẽ', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'203', N'Huyện Vân Đồn', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'204', N'Huyện Hoành Bồ', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'205', N'Thị xã Đông Triều', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'206', N'Thị xã Quảng Yên', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'207', N'Huyện Cô Tô', N'22')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'213', N'Thành phố Bắc Giang', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'215', N'Huyện Yên Thế', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'216', N'Huyện Tân Yên', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'217', N'Huyện Lạng Giang', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'218', N'Huyện Lục Nam', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'219', N'Huyện Lục Ngạn', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'220', N'Huyện Sơn Động', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'221', N'Huyện Yên Dũng', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'222', N'Huyện Việt Yên', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'223', N'Huyện Hiệp Hòa', N'24')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'227', N'Thành phố Việt Trì', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'228', N'Thị xã Phú Thọ', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'230', N'Huyện Đoan Hùng', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'231', N'Huyện Hạ Hòa', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'232', N'Huyện Thanh Ba', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'233', N'Huyện Phù Ninh', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'234', N'Huyện Yên Lập', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'235', N'Huyện Cẩm Khê', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'236', N'Huyện Tam Nông', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'237', N'Huyện Lâm Thao', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'238', N'Huyện Thanh Sơn', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'239', N'Huyện Thanh Thuỷ', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'240', N'Huyện Tân Sơn', N'25')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'243', N'Thành phố Vĩnh Yên', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'244', N'Thị xã Phúc Yên', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'246', N'Huyện Lập Thạch', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'247', N'Huyện Tam Dương', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'248', N'Huyện Tam Đảo', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'249', N'Huyện Bình Xuyên', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'250', N'Huyện Mê Linh', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'251', N'Huyện Yên Lạc', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'252', N'Huyện Vĩnh Tường', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'253', N'Huyện Sông Lô', N'26')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'256', N'Thành phố Bắc Ninh', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'258', N'Huyện Yên Phong', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'259', N'Huyện Quế Võ', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'260', N'Huyện Tiên Du', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'261', N'Thị xã Từ Sơn', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'262', N'Huyện Thuận Thành', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'263', N'Huyện Gia Bình', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'264', N'Huyện Lương Tài', N'27')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'268', N'Quận Hà Đông', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'269', N'Thị xã Sơn Tây', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'271', N'Huyện Ba Vì', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'272', N'Huyện Phúc Thọ', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'273', N'Huyện Đan Phượng', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'274', N'Huyện Hoài Đức', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'275', N'Huyện Quốc Oai', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'276', N'Huyện Thạch Thất', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'277', N'Huyện Chương Mỹ', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'278', N'Huyện Thanh Oai', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'279', N'Huyện Thường Tín', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'280', N'Huyện Phú Xuyên', N'01')
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'281', N'Huyện Ứng Hòa', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'282', N'Huyện Mỹ Đức', N'01')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'288', N'Thành phố Hải Dương', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'290', N'Thị xã Chí Linh', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'291', N'Huyện Nam Sách', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'292', N'Huyện Kinh Môn', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'293', N'Huyện Kim Thành', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'294', N'Huyện Thanh Hà', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'295', N'Huyện Cẩm Giàng', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'296', N'Huyện Bình Giang', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'297', N'Huyện Gia Lộc', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'298', N'Huyện Tứ Kỳ', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'299', N'Huyện Ninh Giang', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'300', N'Huyện Thanh Miện', N'30')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'303', N'Quận Hồng Bàng', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'304', N'Quận Ngô Quyền', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'305', N'Quận Lê Chân', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'306', N'Quận Hải An', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'307', N'Quận Kiến An', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'308', N'Quận Đồ Sơn', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'309', N'Quận Dương Kinh', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'311', N'Huyện Thủy Nguyên', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'312', N'Huyện An Dương', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'313', N'Huyện An Lão', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'314', N'Huyện Kiến Thuỵ', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'315', N'Huyện Tiên Lãng', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'316', N'Huyện Vĩnh Bảo', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'317', N'Huyện Cát Hải', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'318', N'Huyện Bạch Long Vĩ', N'31')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'323', N'Thành phố Hưng Yên', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'325', N'Huyện Văn Lâm', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'326', N'Huyện Văn Giang', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'327', N'Huyện Yên Mỹ', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'328', N'Huyện Mỹ Hào', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'329', N'Huyện Ân Thi', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'330', N'Huyện Khoái Châu', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'331', N'Huyện Kim Động', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'332', N'Huyện Tiên Lữ', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'333', N'Huyện Phù Cừ', N'33')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'336', N'Thành phố Thái Bình', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'338', N'Huyện Quỳnh Phụ', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'339', N'Huyện Hưng Hà', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'340', N'Huyện Đông Hưng', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'341', N'Huyện Thái Thụy', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'342', N'Huyện Tiền Hải', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'343', N'Huyện Kiến Xương', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'344', N'Huyện Vũ Thư', N'34')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'347', N'Thành phố Phủ Lý', N'35')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'349', N'Huyện Duy Tiên', N'35')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'350', N'Huyện Kim Bảng', N'35')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'351', N'Huyện Thanh Liêm', N'35')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'352', N'Huyện Bình Lục', N'35')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'353', N'Huyện Lý Nhân', N'35')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'356', N'Thành phố Nam Định', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'358', N'Huyện Mỹ Lộc', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'359', N'Huyện Vụ Bản', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'360', N'Huyện Ý Yên', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'361', N'Huyện Nghĩa Hưng', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'362', N'Huyện Nam Trực', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'363', N'Huyện Trực Ninh', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'364', N'Huyện Xuân Trường', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'365', N'Huyện Giao Thủy', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'366', N'Huyện Hải Hậu', N'36')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'369', N'Thành phố Ninh Bình', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'370', N'Thành phố Tam Điệp', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'372', N'Huyện Nho Quan', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'373', N'Huyện Gia Viễn', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'374', N'Huyện Hoa Lư', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'375', N'Huyện Yên Khánh', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'376', N'Huyện Kim Sơn', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'377', N'Huyện Yên Mô', N'37')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'380', N'Thành phố Thanh Hóa', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'381', N'Thị xã Bỉm Sơn', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'382', N'Thành phố Sầm Sơn', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'384', N'Huyện Mường Lát', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'385', N'Huyện Quan Hóa', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'386', N'Huyện Bá Thước', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'387', N'Huyện Quan Sơn', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'388', N'Huyện Lang Chánh', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'389', N'Huyện Ngọc Lặc', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'390', N'Huyện Cẩm Thủy', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'391', N'Huyện Thạch Thành', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'392', N'Huyện Hà Trung', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'393', N'Huyện Vĩnh Lộc', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'394', N'Huyện Yên Định', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'395', N'Huyện Thọ Xuân', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'396', N'Huyện Thường Xuân', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'397', N'Huyện Triệu Sơn', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'398', N'Huyện Thiệu Hóa', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'399', N'Huyện Hoằng Hóa', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'400', N'Huyện Hậu Lộc', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'401', N'Huyện Nga Sơn', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'402', N'Huyện Như Xuân', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'403', N'Huyện Như Thanh', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'404', N'Huyện Nông Cống', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'405', N'Huyện Đông Sơn', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'406', N'Huyện Quảng Xương', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'407', N'Huyện Tĩnh Gia', N'38')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'412', N'Thành phố Vinh', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'413', N'Thị xã Cửa Lò', N'40')
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'414', N'Thị xã Thái Hòa', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'415', N'Huyện Quế Phong', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'416', N'Huyện Quỳ Châu', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'417', N'Huyện Kỳ Sơn', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'418', N'Huyện Tương Dương', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'419', N'Huyện Nghĩa Đàn', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'420', N'Huyện Quỳ Hợp', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'421', N'Huyện Quỳnh Lưu', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'422', N'Huyện Con Cuông', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'423', N'Huyện Tân Kỳ', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'424', N'Huyện Anh Sơn', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'425', N'Huyện Diễn Châu', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'426', N'Huyện Yên Thành', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'427', N'Huyện Đô Lương', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'428', N'Huyện Thanh Chương', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'429', N'Huyện Nghi Lộc', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'430', N'Huyện Nam Đàn', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'431', N'Huyện Hưng Nguyên', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'432', N'Thị xã Hoàng Mai', N'40')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'436', N'Thành phố Hà Tĩnh', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'437', N'Thị xã Hồng Lĩnh', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'439', N'Huyện Hương Sơn', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'440', N'Huyện Đức Thọ', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'441', N'Huyện Vũ Quang', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'442', N'Huyện Nghi Xuân', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'443', N'Huyện Can Lộc', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'444', N'Huyện Hương Khê', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'445', N'Huyện Thạch Hà', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'446', N'Huyện Cẩm Xuyên', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'447', N'Huyện Kỳ Anh', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'448', N'Huyện Lộc Hà', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'449', N'Thị xã Kỳ Anh', N'42')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'450', N'Thành Phố Đồng Hới', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'452', N'Huyện Minh Hóa', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'453', N'Huyện Tuyên Hóa', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'454', N'Huyện Quảng Trạch', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'455', N'Huyện Bố Trạch', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'456', N'Huyện Quảng Ninh', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'457', N'Huyện Lệ Thủy', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'458', N'Thị xã Ba Đồn', N'44')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'461', N'Thành phố Đông Hà', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'462', N'Thị xã Quảng Trị', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'464', N'Huyện Vĩnh Linh', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'465', N'Huyện Hướng Hóa', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'466', N'Huyện Gio Linh', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'467', N'Huyện Đakrông', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'468', N'Huyện Cam Lộ', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'469', N'Huyện Triệu Phong', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'470', N'Huyện Hải Lăng', N'45')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'474', N'Thành phố Huế', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'476', N'Huyện Phong Điền', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'477', N'Huyện Quảng Điền', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'478', N'Huyện Phú Vang', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'479', N'Thị xã Hương Thủy', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'480', N'Thị xã Hương Trà', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'481', N'Huyện A Lưới', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'482', N'Huyện Phú Lộc', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'483', N'Huyện Nam Đông', N'46')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'490', N'Quận Liên Chiểu', N'48')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'491', N'Quận Thanh Khê', N'48')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'492', N'Quận Hải Châu', N'48')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'493', N'Quận Sơn Trà', N'48')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'494', N'Quận Ngũ Hành Sơn', N'48')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'495', N'Quận Cẩm Lệ', N'48')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'497', N'Huyện Hòa Vang', N'48')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'502', N'Thành phố Tam Kỳ', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'503', N'Thành phố Hội An', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'504', N'Huyện Tây Giang', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'505', N'Huyện Đông Giang', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'506', N'Huyện Đại Lộc', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'507', N'Thị xã Điện Bàn', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'508', N'Huyện Duy Xuyên', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'509', N'Huyện Quế Sơn', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'510', N'Huyện Nam Giang', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'511', N'Huyện Phước Sơn', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'512', N'Huyện Hiệp Đức', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'513', N'Huyện Thăng Bình', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'514', N'Huyện Tiên Phước', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'515', N'Huyện Bắc Trà My', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'516', N'Huyện Nam Trà My', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'517', N'Huyện Núi Thành', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'518', N'Huyện Phú Ninh', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'519', N'Huyện Nông Sơn', N'49')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'522', N'Thành phố Quảng Ngãi', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'524', N'Huyện Bình Sơn', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'525', N'Huyện Trà Bồng', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'526', N'Huyện Tây Trà', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'527', N'Huyện Sơn Tịnh', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'528', N'Huyện Tư Nghĩa', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'529', N'Huyện Sơn Hà', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'530', N'Huyện Sơn Tây', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'531', N'Huyện Minh Long', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'532', N'Huyện Nghĩa Hành', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'533', N'Huyện Mộ Đức', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'534', N'Huyện Đức Phổ', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'535', N'Huyện Ba Tơ', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'536', N'Huyện Lý Sơn', N'51')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'540', N'Thành phố Quy Nhơn', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'542', N'Huyện An Lão', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'543', N'Huyện Hoài Nhơn', N'52')
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'544', N'Huyện Hoài Ân', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'545', N'Huyện Phù Mỹ', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'546', N'Huyện Vĩnh Thạnh', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'547', N'Huyện Tây Sơn', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'548', N'Huyện Phù Cát', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'549', N'Thị xã An Nhơn', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'550', N'Huyện Tuy Phước', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'551', N'Huyện Vân Canh', N'52')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'555', N'Thành phố Tuy Hòa', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'557', N'Thị xã Sông Cầu', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'558', N'Huyện Đồng Xuân', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'559', N'Huyện Tuy An', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'560', N'Huyện Sơn Hòa', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'561', N'Huyện Sông Hinh', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'562', N'Huyện Tây Hòa', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'563', N'Huyện Phú Hòa', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'564', N'Huyện Đông Hòa', N'54')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'568', N'Thành phố Nha Trang', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'569', N'Thành phố Cam Ranh', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'570', N'Huyện Cam Lâm', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'571', N'Huyện Vạn Ninh', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'572', N'Thị xã Ninh Hòa', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'573', N'Huyện Khánh Vĩnh', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'574', N'Huyện Diên Khánh', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'575', N'Huyện Khánh Sơn', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'576', N'Huyện Trường Sa', N'56')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'582', N'Thành phố Phan Rang-Tháp Chàm', N'58')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'584', N'Huyện Bác Ái', N'58')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'585', N'Huyện Ninh Sơn', N'58')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'586', N'Huyện Ninh Hải', N'58')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'587', N'Huyện Ninh Phước', N'58')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'588', N'Huyện Thuận Bắc', N'58')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'589', N'Huyện Thuận Nam', N'58')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'593', N'Thành phố Phan Thiết', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'594', N'Thị xã La Gi', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'595', N'Huyện Tuy Phong', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'596', N'Huyện Bắc Bình', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'597', N'Huyện Hàm Thuận Bắc', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'598', N'Huyện Hàm Thuận Nam', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'599', N'Huyện Tánh Linh', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'600', N'Huyện Đức Linh', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'601', N'Huyện Hàm Tân', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'602', N'Huyện Phú Quí', N'60')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'608', N'Thành phố Kon Tum', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'610', N'Huyện Đắk Glei', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'611', N'Huyện Ngọc Hồi', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'612', N'Huyện Đắk Tô', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'613', N'Huyện Kon Plông', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'614', N'Huyện Kon Rẫy', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'615', N'Huyện Đắk Hà', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'616', N'Huyện Sa Thầy', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'617', N'Huyện Tu Mơ Rông', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'618', N'Huyện Ia HDrai', N'62')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'622', N'Thành phố Pleiku', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'623', N'Thị xã An Khê', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'624', N'Thị xã Ayun Pa', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'625', N'Huyện KBang', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'626', N'Huyện Đăk Đoa', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'627', N'Huyện Chư Păh', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'628', N'Huyện Ia Grai', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'629', N'Huyện Mang Yang', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'630', N'Huyện Kông Chro', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'631', N'Huyện Đức Cơ', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'632', N'Huyện Chư Prông', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'633', N'Huyện Chư Sê', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'634', N'Huyện Đăk Pơ', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'635', N'Huyện Ia Pa', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'637', N'Huyện Krông Pa', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'638', N'Huyện Phú Thiện', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'639', N'Huyện Chư Pưh', N'64')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'643', N'Thành phố Buôn Ma Thuột', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'644', N'Thị Xã Buôn Hồ', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'645', N'Huyện Ea Hleo', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'646', N'Huyện Ea Súp', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'647', N'Huyện Buôn Đôn', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'648', N'Huyện Cư Mgar', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'649', N'Huyện Krông Búk', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'650', N'Huyện Krông Năng', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'651', N'Huyện Ea Kar', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'652', N'Huyện M Đrắk', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'653', N'Huyện Krông Bông', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'654', N'Huyện Krông Pắc', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'655', N'Huyện Krông A Na', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'656', N'Huyện Lắk', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'657', N'Huyện Cư Kuin', N'66')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'660', N'Thị xã Gia Nghĩa', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'661', N'Huyện Đăk Glong', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'662', N'Huyện Cư Jút', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'663', N'Huyện Đắk Mil', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'664', N'Huyện Krông Nô', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'665', N'Huyện Đắk Song', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'666', N'Huyện Đắk R Lấp', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'667', N'Huyện Tuy Đức', N'67')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'672', N'Thành phố Đà Lạt', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'673', N'Thành phố Bảo Lộc', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'674', N'Huyện Đam Rông', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'675', N'Huyện Lạc Dương', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'676', N'Huyện Lâm Hà', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'677', N'Huyện Đơn Dương', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'678', N'Huyện Đức Trọng', N'68')
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'679', N'Huyện Di Linh', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'680', N'Huyện Bảo Lâm', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'681', N'Huyện Đạ Huoai', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'682', N'Huyện Đạ Tẻh', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'683', N'Huyện Cát Tiên', N'68')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'688', N'Thị xã Phước Long', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'689', N'Thị xã Đồng Xoài', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'690', N'Thị xã Bình Long', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'691', N'Huyện Bù Gia Mập', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'692', N'Huyện Lộc Ninh', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'693', N'Huyện Bù Đốp', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'694', N'Huyện Hớn Quản', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'695', N'Huyện Đồng Phú', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'696', N'Huyện Bù Đăng', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'697', N'Huyện Chơn Thành', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'698', N'Huyện Phú Riềng', N'70')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'703', N'Thành phố Tây Ninh', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'705', N'Huyện Tân Biên', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'706', N'Huyện Tân Châu', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'707', N'Huyện Dương Minh Châu', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'708', N'Huyện Châu Thành', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'709', N'Huyện Hòa Thành', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'710', N'Huyện Gò Dầu', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'711', N'Huyện Bến Cầu', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'712', N'Huyện Trảng Bàng', N'72')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'718', N'Thành phố Thủ Dầu Một', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'719', N'Huyện Bàu Bàng', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'720', N'Huyện Dầu Tiếng', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'721', N'Thị xã Bến Cát', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'722', N'Huyện Phú Giáo', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'723', N'Thị xã Tân Uyên', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'724', N'Thị xã Dĩ An', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'725', N'Thị xã Thuận An', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'726', N'Huyện Bắc Tân Uyên', N'74')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'731', N'Thành phố Biên Hòa', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'732', N'Thị xã Long Khánh', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'734', N'Huyện Tân Phú', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'735', N'Huyện Vĩnh Cửu', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'736', N'Huyện Định Quán', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'737', N'Huyện Trảng Bom', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'738', N'Huyện Thống Nhất', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'739', N'Huyện Cẩm Mỹ', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'740', N'Huyện Long Thành', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'741', N'Huyện Xuân Lộc', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'742', N'Huyện Nhơn Trạch', N'75')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'747', N'Thành phố Vũng Tàu', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'748', N'Thành phố Bà Rịa', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'750', N'Huyện Châu Đức', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'751', N'Huyện Xuyên Mộc', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'752', N'Huyện Long Điền', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'753', N'Huyện Đất Đỏ', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'754', N'Huyện Tân Thành', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'755', N'Huyện Côn Đảo', N'77')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'760', N'Quận 1', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'761', N'Quận 12', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'762', N'Quận Thủ Đức', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'763', N'Quận 9', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'764', N'Quận Gò Vấp', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'765', N'Quận Bình Thạnh', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'766', N'Quận Tân Bình', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'767', N'Quận Tân Phú', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'768', N'Quận Phú Nhuận', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'769', N'Quận 2', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'770', N'Quận 3', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'771', N'Quận 10', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'772', N'Quận 11', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'773', N'Quận 4', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'774', N'Quận 5', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'775', N'Quận 6', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'776', N'Quận 8', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'777', N'Quận Bình Tân', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'778', N'Quận 7', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'783', N'Huyện Củ Chi', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'784', N'Huyện Hóc Môn', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'785', N'Huyện Bình Chánh', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'786', N'Huyện Nhà Bè', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'787', N'Huyện Cần Giờ', N'79')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'794', N'Thành phố Tân An', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'795', N'Thị xã Kiến Tường', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'796', N'Huyện Tân Hưng', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'797', N'Huyện Vĩnh Hưng', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'798', N'Huyện Mộc Hóa', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'799', N'Huyện Tân Thạnh', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'800', N'Huyện Thạnh Hóa', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'801', N'Huyện Đức Huệ', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'802', N'Huyện Đức Hòa', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'803', N'Huyện Bến Lức', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'804', N'Huyện Thủ Thừa', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'805', N'Huyện Tân Trụ', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'806', N'Huyện Cần Đước', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'807', N'Huyện Cần Giuộc', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'808', N'Huyện Châu Thành', N'80')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'815', N'Thành phố Mỹ Tho', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'816', N'Thị xã Gò Công', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'817', N'Thị xã Cai Lậy', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'818', N'Huyện Tân Phước', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'819', N'Huyện Cái Bè', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'820', N'Huyện Cai Lậy', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'821', N'Huyện Châu Thành', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'822', N'Huyện Chợ Gạo', N'82')
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'823', N'Huyện Gò Công Tây', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'824', N'Huyện Gò Công Đông', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'825', N'Huyện Tân Phú Đông', N'82')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'829', N'Thành phố Bến Tre', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'831', N'Huyện Châu Thành', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'832', N'Huyện Chợ Lách', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'833', N'Huyện Mỏ Cày Nam', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'834', N'Huyện Giồng Trôm', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'835', N'Huyện Bình Đại', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'836', N'Huyện Ba Tri', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'837', N'Huyện Thạnh Phú', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'838', N'Huyện Mỏ Cày Bắc', N'83')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'842', N'Thành phố Trà Vinh', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'844', N'Huyện Càng Long', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'845', N'Huyện Cầu Kè', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'846', N'Huyện Tiểu Cần', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'847', N'Huyện Châu Thành', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'848', N'Huyện Cầu Ngang', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'849', N'Huyện Trà Cú', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'850', N'Huyện Duyên Hải', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'851', N'Thị xã Duyên Hải', N'84')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'855', N'Thành phố Vĩnh Long', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'857', N'Huyện Long Hồ', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'858', N'Huyện Mang Thít', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'859', N'Huyện Vũng Liêm', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'860', N'Huyện Tam Bình', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'861', N'Thị xã Bình Minh', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'862', N'Huyện Trà Ôn', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'863', N'Huyện Bình Tân', N'86')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'866', N'Thành phố Cao Lãnh', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'867', N'Thành phố Sa Đéc', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'868', N'Thị xã Hồng Ngự', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'869', N'Huyện Tân Hồng', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'870', N'Huyện Hồng Ngự', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'871', N'Huyện Tam Nông', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'872', N'Huyện Tháp Mười', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'873', N'Huyện Cao Lãnh', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'874', N'Huyện Thanh Bình', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'875', N'Huyện Lấp Vò', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'876', N'Huyện Lai Vung', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'877', N'Huyện Châu Thành', N'87')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'883', N'Thành phố Long Xuyên', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'884', N'Thành phố Châu Đốc', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'886', N'Huyện An Phú', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'887', N'Thị xã Tân Châu', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'888', N'Huyện Phú Tân', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'889', N'Huyện Châu Phú', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'890', N'Huyện Tịnh Biên', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'891', N'Huyện Tri Tôn', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'892', N'Huyện Châu Thành', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'893', N'Huyện Chợ Mới', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'894', N'Huyện Thoại Sơn', N'89')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'899', N'Thành phố Rạch Giá', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'900', N'Thị xã Hà Tiên', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'902', N'Huyện Kiên Lương', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'903', N'Huyện Hòn Đất', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'904', N'Huyện Tân Hiệp', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'905', N'Huyện Châu Thành', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'906', N'Huyện Giồng Riềng', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'907', N'Huyện Gò Quao', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'908', N'Huyện An Biên', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'909', N'Huyện An Minh', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'910', N'Huyện Vĩnh Thuận', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'911', N'Huyện Phú Quốc', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'912', N'Huyện Kiên Hải', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'913', N'Huyện U Minh Thượng', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'914', N'Huyện Giang Thành', N'91')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'916', N'Quận Ninh Kiều', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'917', N'Quận Ô Môn', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'918', N'Quận Bình Thuỷ', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'919', N'Quận Cái Răng', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'923', N'Quận Thốt Nốt', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'924', N'Huyện Vĩnh Thạnh', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'925', N'Huyện Cờ Đỏ', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'926', N'Huyện Phong Điền', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'927', N'Huyện Thới Lai', N'92')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'930', N'Thành phố Vị Thanh', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'931', N'Thị xã Ngã Bảy', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'932', N'Huyện Châu Thành A', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'933', N'Huyện Châu Thành', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'934', N'Huyện Phụng Hiệp', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'935', N'Huyện Vị Thủy', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'936', N'Huyện Long Mỹ', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'937', N'Thị xã Long Mỹ', N'93')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'941', N'Thành phố Sóc Trăng', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'942', N'Huyện Châu Thành', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'943', N'Huyện Kế Sách', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'944', N'Huyện Mỹ Tú', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'945', N'Huyện Cù Lao Dung', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'946', N'Huyện Long Phú', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'947', N'Huyện Mỹ Xuyên', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'948', N'Thị xã Ngã Năm', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'949', N'Huyện Thạnh Trị', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'950', N'Thị xã Vĩnh Châu', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'951', N'Huyện Trần Đề', N'94')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'954', N'Thành phố Bạc Liêu', N'95')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'956', N'Huyện Hồng Dân', N'95')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'957', N'Huyện Phước Long', N'95')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'958', N'Huyện Vĩnh Lợi', N'95')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'959', N'Thị xã Giá Rai', N'95')
GO
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'960', N'Huyện Đông Hải', N'95')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'961', N'Huyện Hòa Bình', N'95')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'964', N'Thành phố Cà Mau', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'966', N'Huyện U Minh', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'967', N'Huyện Thới Bình', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'968', N'Huyện Trần Văn Thời', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'969', N'Huyện Cái Nước', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'970', N'Huyện Đầm Dơi', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'971', N'Huyện Năm Căn', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'972', N'Huyện Phú Tân', N'96')
INSERT [dbo].[Districts] ([ID], [DistrictName], [ProvinceID]) VALUES (N'973', N'Huyện Ngọc Hiển', N'96')
GO
INSERT [dbo].[Languages] ([ID], [Title], [Published], [Order]) VALUES (N'vi-VN', N'VietNam', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Navigations] ON 

INSERT [dbo].[Navigations] ([ID], [Title], [Description], [Order], [Key]) VALUES (1, N'Tin tức và sự kiện', NULL, 5, N'colleft')
INSERT [dbo].[Navigations] ([ID], [Title], [Description], [Order], [Key]) VALUES (2, N'Box Footer', NULL, 6, N'footer')
INSERT [dbo].[Navigations] ([ID], [Title], [Description], [Order], [Key]) VALUES (4, N'Menu chính', NULL, 2, N'main')
INSERT [dbo].[Navigations] ([ID], [Title], [Description], [Order], [Key]) VALUES (12, N'Các mục nhỏ tại trang chủ', NULL, 1, N'box_home')
SET IDENTITY_INSERT [dbo].[Navigations] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgressOfTopics] ON 

INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (1, 3, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-06T00:00:00.000' AS DateTime), 90, 70, 90, 80, NULL, NULL, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (2, 3, CAST(N'2021-09-08T00:00:00.000' AS DateTime), CAST(N'2021-09-16T00:00:00.000' AS DateTime), 90, 70, 90, 80, NULL, NULL, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (3, 3, CAST(N'2021-09-17T00:00:00.000' AS DateTime), CAST(N'2021-09-23T00:00:00.000' AS DateTime), 90, 70, 90, 80, NULL, NULL, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (4, 3, CAST(N'2021-09-23T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), 90, 70, 90, 80, NULL, NULL, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (5, 1, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-06T00:00:00.000' AS DateTime), NULL, NULL, 90, NULL, NULL, 1, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (6, 1, CAST(N'2021-09-07T00:00:00.000' AS DateTime), CAST(N'2021-09-16T00:00:00.000' AS DateTime), NULL, NULL, 90, NULL, NULL, 1, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (7, 2, CAST(N'2021-09-17T00:00:00.000' AS DateTime), CAST(N'2021-09-23T00:00:00.000' AS DateTime), NULL, NULL, 90, NULL, NULL, 1, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (8, 2, CAST(N'2021-09-24T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), NULL, NULL, 90, NULL, NULL, 1, NULL)
INSERT [dbo].[ProgressOfTopics] ([ID], [TopicID], [StartDate], [EndDate], [Atitule], [Effort], [Complete], [Point], [Description], [Status], [LinkFile]) VALUES (9, 4, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-09T00:00:00.000' AS DateTime), NULL, NULL, 23, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[ProgressOfTopics] OFF
GO
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'01', N'Thành phố Hà Nội', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'02', N'Tỉnh Hà Giang', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'04', N'Tỉnh Cao Bằng', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'06', N'Tỉnh Bắc Kạn', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'08', N'Tỉnh Tuyên Quang', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'10', N'Tỉnh Lào Cai', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'11', N'Tỉnh Điện Biên', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'12', N'Tỉnh Lai Châu', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'14', N'Tỉnh Sơn La', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'15', N'Tỉnh Yên Bái', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'17', N'Tỉnh Hòa Bình', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'19', N'Tỉnh Thái Nguyên', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'20', N'Tỉnh Lạng Sơn', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'22', N'Tỉnh Quảng Ninh', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'24', N'Tỉnh Bắc Giang', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'25', N'Tỉnh Phú Thọ', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'26', N'Tỉnh Vĩnh Phúc', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'27', N'Tỉnh Bắc Ninh', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'30', N'Tỉnh Hải Dương', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'31', N'Thành phố Hải Phòng', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'33', N'Tỉnh Hưng Yên', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'34', N'Tỉnh Thái Bình', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'35', N'Tỉnh Hà Nam', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'36', N'Tỉnh Nam Định', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'37', N'Tỉnh Ninh Bình', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'38', N'Tỉnh Thanh Hóa', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'40', N'Tỉnh Nghệ An', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'42', N'Tỉnh Hà Tĩnh', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'44', N'Tỉnh Quảng Bình', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'45', N'Tỉnh Quảng Trị', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'46', N'Tỉnh Thừa Thiên Huế', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'48', N'Thành phố Đà Nẵng', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'49', N'Tỉnh Quảng Nam', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'51', N'Tỉnh Quảng Ngãi', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'52', N'Tỉnh Bình Định', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'54', N'Tỉnh Phú Yên', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'56', N'Tỉnh Khánh Hòa', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'58', N'Tỉnh Ninh Thuận', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'60', N'Tỉnh Bình Thuận', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'62', N'Tỉnh Kon Tum', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'64', N'Tỉnh Gia Lai', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'66', N'Tỉnh Đắk Lắk', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'67', N'Tỉnh Đắk Nông', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'68', N'Tỉnh Lâm Đồng', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'70', N'Tỉnh Bình Phước', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'72', N'Tỉnh Tây Ninh', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'74', N'Tỉnh Bình Dương', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'75', N'Tỉnh Đồng Nai', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'77', N'Tỉnh Bà Rịa - Vũng Tàu', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'79', N'Thành phố Hồ Chí Minh', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'80', N'Tỉnh Long An', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'82', N'Tỉnh Tiền Giang', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'83', N'Tỉnh Bến Tre', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'84', N'Tỉnh Trà Vinh', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'86', N'Tỉnh Vĩnh Long', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'87', N'Tỉnh Đồng Tháp', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'89', N'Tỉnh An Giang', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'91', N'Tỉnh Kiên Giang', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'92', N'Thành phố Cần Thơ', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'93', N'Tỉnh Hậu Giang', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'94', N'Tỉnh Sóc Trăng', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'95', N'Tỉnh Bạc Liêu', 2)
INSERT [dbo].[Provinces] ([ID], [ProvinceName], [CountryId]) VALUES (N'96', N'Tỉnh Cà Mau', 2)
GO
SET IDENTITY_INSERT [dbo].[RegisterTopics] ON 

INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (1, N'Đề tài đề xuất 1', NULL, N'13', NULL, NULL, NULL, 0, NULL, NULL, 2)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (2, N'Đề tài đề xuất 2', NULL, N'12', NULL, NULL, NULL, 0, NULL, NULL, 2)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (3, N'Đề tài đề xuất 2', 1026, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (4, N'Đề tài đề xuất 2', 1029, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (5, N'Đề tài đề xuất 2', 1027, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (6, N'Đề tài đề xuất 2', 1028, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (7, N'Đề tài đề xuất 2', 1029, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (8, N'Đề tài đề xuất 12', 1027, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (10, N'Đề tài đề xuất 10', 1026, N'31', NULL, NULL, NULL, 1, NULL, NULL, 1)
INSERT [dbo].[RegisterTopics] ([ID], [TopicName], [UserID], [StudentID], [Description], [CreatedDate], [FileLink], [Status], [ConfirmDate], [LinkFile], [SpecialityID]) VALUES (11, N'test register topic', NULL, N'2', N'test description', NULL, N'', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[RegisterTopics] OFF
GO
SET IDENTITY_INSERT [dbo].[Specialitys] ON 

INSERT [dbo].[Specialitys] ([ID], [Name]) VALUES (1, N'Khoa CNTT')
INSERT [dbo].[Specialitys] ([ID], [Name]) VALUES (2, N'Khoa ATTT')
INSERT [dbo].[Specialitys] ([ID], [Name]) VALUES (3, N'Khoa DTVT')
INSERT [dbo].[Specialitys] ([ID], [Name]) VALUES (4, N'Khoa test')
SET IDENTITY_INSERT [dbo].[Specialitys] OFF
GO
SET IDENTITY_INSERT [dbo].[SubscribeNotices] ON 

INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (1, N'trangqt_c00422@fpt.aptech.ac.vn', N'admin', CAST(N'2013-12-06T11:12:24.230' AS DateTime), N'admin', CAST(N'2013-12-06T11:12:24.230' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (2, N'trangqt2908@gmail.com', N'admin', CAST(N'2013-12-10T09:30:54.517' AS DateTime), N'admin', CAST(N'2013-12-10T09:30:54.517' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (3, N'trangqt2908@gmail.com', N'admin', CAST(N'2013-12-10T09:40:05.607' AS DateTime), N'admin', CAST(N'2013-12-10T09:40:05.607' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (4, N'DucMjnh1992@yahoo.com.vn', N'admin', CAST(N'2013-12-23T16:05:06.903' AS DateTime), N'admin', CAST(N'2013-12-23T16:05:06.903' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (5, N'DucMjnh1992@yahoo.com.vn', N'admin', CAST(N'2013-12-23T16:05:39.673' AS DateTime), N'admin', CAST(N'2013-12-23T16:05:39.673' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (6, N'DucMjnh1992@yahoo.com', N'admin', CAST(N'2013-12-27T16:02:21.920' AS DateTime), N'admin', CAST(N'2013-12-27T16:02:21.920' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (7, N'DucMjnh1992@yahoo.com', N'admin', CAST(N'2013-12-27T16:02:36.320' AS DateTime), N'admin', CAST(N'2013-12-27T16:02:36.320' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (8, N'DucMjnh1992@yahoo.com', N'', CAST(N'2014-01-06T10:23:18.210' AS DateTime), N'', CAST(N'2014-01-06T10:23:18.210' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (9, N'DucMjnh1992@yahoo.com', N'', CAST(N'2014-01-06T10:23:18.270' AS DateTime), N'', CAST(N'2014-01-06T10:23:18.270' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (10, N'DucMjnh1992@yahoo.com', N'admin', CAST(N'2014-01-06T10:30:05.517' AS DateTime), N'admin', CAST(N'2014-01-06T10:30:05.517' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (11, N'DucMjnh1992@yahoo.com', N'admin', CAST(N'2014-01-06T10:30:05.557' AS DateTime), N'admin', CAST(N'2014-01-06T10:30:05.557' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (12, N'DucMjnh1992@yahoo.com', N'admin', CAST(N'2014-01-06T10:35:49.667' AS DateTime), N'admin', CAST(N'2014-01-06T10:35:49.667' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (13, N'DucMjnh1992@yahoo.com', N'admin', CAST(N'2014-01-06T10:35:49.700' AS DateTime), N'admin', CAST(N'2014-01-06T10:35:49.700' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (14, N'DucMjnh1992@yahoo.com', N'', CAST(N'2014-01-06T10:39:52.327' AS DateTime), N'', CAST(N'2014-01-06T10:39:52.327' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (15, N'DucMjnh1992@yahoo.com', N'', CAST(N'2014-01-06T10:39:52.447' AS DateTime), N'', CAST(N'2014-01-06T10:39:52.447' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (16, N'ducminh@gmail.com', N'', CAST(N'2014-01-06T10:49:20.477' AS DateTime), N'', CAST(N'2014-01-06T10:49:20.477' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (17, N'ducminh@gmail.com', N'', CAST(N'2014-01-06T10:49:20.560' AS DateTime), N'', CAST(N'2014-01-06T10:49:20.560' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (18, N'DucMjnh1992@yahoo.com', N'', CAST(N'2014-01-06T10:51:45.313' AS DateTime), N'', CAST(N'2014-01-06T10:51:45.313' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (19, N'longnguyen21@hotmail.com', N'admin', CAST(N'2014-01-06T11:49:29.810' AS DateTime), N'admin', CAST(N'2014-01-06T11:49:29.810' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (20, N'longnguyen21@hotmail.com', N'admin', CAST(N'2014-01-06T11:49:29.887' AS DateTime), N'admin', CAST(N'2014-01-06T11:49:29.887' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (21, N'ducminh@adcvietnam.net', N'admin', CAST(N'2014-01-06T11:51:00.257' AS DateTime), N'admin', CAST(N'2014-01-06T11:51:00.257' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (22, N'ducminh@adcvietnam.net', N'admin', CAST(N'2014-01-06T11:51:01.130' AS DateTime), N'admin', CAST(N'2014-01-06T11:51:01.130' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (23, N'longnguyen21@hotmail.com', N'admin', CAST(N'2014-01-06T11:54:27.383' AS DateTime), N'admin', CAST(N'2014-01-06T11:54:27.383' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (24, N'longnguyen21@hotmail.com', N'admin', CAST(N'2014-01-06T11:54:36.727' AS DateTime), N'admin', CAST(N'2014-01-06T11:54:36.727' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (25, N'ducminh@adcvietnam.net', N'', CAST(N'2014-01-06T13:58:37.820' AS DateTime), N'', CAST(N'2014-01-06T13:58:37.820' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (26, N'vuongnv@adcvietnam.net', N'', CAST(N'2014-02-13T14:27:40.890' AS DateTime), N'', CAST(N'2014-02-13T14:27:40.890' AS DateTime), 1)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (27, N'buiminhhung162@gmail.com', N'admin', NULL, N'admin', NULL, 0)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (28, N'huonggiang86@gmail.com', N'admin', NULL, N'admin', NULL, 0)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (29, N'trangbaoanh3011@gmail.com', N'', NULL, N'', NULL, 0)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (30, N'trangbaoanh3011@gmai.com', N'', NULL, N'', NULL, 0)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (31, N'giang@joymarktravel.com', N'admin', NULL, N'admin', NULL, 0)
INSERT [dbo].[SubscribeNotices] ([Id], [Email], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (32, N'michel.hoang388@orange.fr', N'', NULL, N'', NULL, 0)
SET IDENTITY_INSERT [dbo].[SubscribeNotices] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (1, 1027, N'26', N'Đồ án tốt nghiệp môn THIẾT KẾ VÀ LẬP TRÌNH WEB', NULL, N'Đề tài bao gồm các chức năng như sau: 
...
...
...
...
', CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-10-31T00:00:00.000' AS DateTime), CAST(N'2021-07-02T00:00:00.000' AS DateTime), CAST(N'2021-07-30T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (2, 1027, N'25', N'Xây dựng chương trình Quản Lý Nhập/Xuất Hàng Theo Đơn Đặt Hàng', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-10-31T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (3, 1029, N'24', N'Đồ án tốt nghiệp Phần mềm quản lý thư viện', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (4, 1026, N'23', N'Đề tài Quản lý khách sạn (KHTN)', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (5, 1027, N'34', N'Đồ án tốt nghiệp : giao thức TCP/IP và kết nối qua ATM', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 3)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (6, 1029, N'33', N'Đồ án Quản lý các đại lý', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (7, 1028, N'32', N'Xây Dựng WebSite Bán Hàng Qua Mạng', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (8, 1030, N'31', N'Đồ án Quản lý tuyển dụng Nhân Viên', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 3)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (9, 1030, N'21', N'Đồ án Nghiên cứu các giải thuật mã hóa.', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 3)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (10, 1028, N'20', N'Đồ án “XÂY DỰNG WEBSITE GIỚI THIỆU TOUR DU LỊCH”', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (11, 1026, N'19', N'Đồ án Quản lý tuyển dụng Nhân Viên', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Topics] ([ID], [UserID], [StudentID], [TopicName], [FileLink], [Description], [StartDate], [EndDate], [StartRegister], [EndRegister], [LinkFile], [SpecialityID]) VALUES (12, 1026, N'18', N'Đồ án Xây dựng 1 diễn đàn', NULL, NULL, CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
SET IDENTITY_INSERT [dbo].[UploadFiles] ON 

INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (1, N'Test ', N'/uploads/file/PTA - Contact us.docx')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (2, N'test 2', N'/uploads/file/Phieu_1B_DoanhNghiep.xls')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (3, N'GADTfile', N'/uploads/file/GADT_form_tour_package.docx')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (7, NULL, N'/uploads/file/Desktop.rar')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (1008, N'Folder 1407', N'/uploads/file/Folder1407.pdf')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (1009, NULL, N'/uploads/file/Visa-to-Dubai.pdf')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (1011, N'file', N'/uploads/file/2507.jpg')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (1012, NULL, N'/uploads/file/Desktop.rar')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (1014, N'Backdrop - Tam Dao Group', N'/uploads/file/Backdrop.psd')
INSERT [dbo].[UploadFiles] ([ID], [Title], [Link]) VALUES (1015, N'Tạp chí môi trường số 5 năm 2020', N'/uploads/file/so 1 2020.pdf')
SET IDENTITY_INSERT [dbo].[UploadFiles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Mobile], [Avatar], [BranchID], [Position], [DateBorn], [SpecialityID]) VALUES (1, N'admin', N'Hệ đào tạo', N'hedaotao@gmail.com', N'0886081230', N'/content/uploads/avatars/admin.png', NULL, N'Thành viên', NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Mobile], [Avatar], [BranchID], [Position], [DateBorn], [SpecialityID]) VALUES (1026, N'teacher_1', N'Đặng Quốc Việt', N'dangquocviet@gmail.com', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Mobile], [Avatar], [BranchID], [Position], [DateBorn], [SpecialityID]) VALUES (1027, N'teacher_2', N'Nguyễn Ngọc Hải', N'giaovien01@gmail.com', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Mobile], [Avatar], [BranchID], [Position], [DateBorn], [SpecialityID]) VALUES (1028, N'teacher_3', N'Hoàng Văn Bảo', N'giaovien02@gmail.com', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Mobile], [Avatar], [BranchID], [Position], [DateBorn], [SpecialityID]) VALUES (1029, N'teacher_4', N'Hoàng Thị Thanh Mai', N'giaovien03@gmail.com', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FullName], [Email], [Mobile], [Avatar], [BranchID], [Position], [DateBorn], [SpecialityID]) VALUES (1030, N'teacher_5', N'Nguyễn Quỳnh Hoa', N'giaovien04@gmail.com', NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[WebConfigs] ON 

INSERT [dbo].[WebConfigs] ([ID], [Title], [Key], [Value], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'email nhận thông tin', N'email-receive', N'trangqt2908@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebConfigs] ([ID], [Title], [Key], [Value], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'email gửi thông tin', N'email-send', N'tapchimoitruongtest@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebConfigs] ([ID], [Title], [Key], [Value], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'smtp email gửi', N'email-send-smtp', N'smtp.gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebConfigs] ([ID], [Title], [Key], [Value], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'port email gửi', N'email-send-port', N'587', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebConfigs] ([ID], [Title], [Key], [Value], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'mật khẩu email gửi', N'email-send-password', N'tapchi123', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebConfigs] ([ID], [Title], [Key], [Value], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'ssl email gửi', N'email-send-ssl', N'1', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebConfigs] ([ID], [Title], [Key], [Value], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'LicenseKey', N'LicenseKey', N'BE23C0C3-5CEE-4F24-8FC5-ED818D5CE797', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[WebConfigs] OFF
GO
SET IDENTITY_INSERT [dbo].[WebContacts] ON 

INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (1, N'test 2', N'jk', N'Trang', N'trangqt2908@gmail.com', N'01234689698', N'84 Tô Vĩnh Diện', CAST(N'2016-12-10' AS Date), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (2, N'Ý kiến bạn đọc', N'66', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 1, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (3, N'Ý kiến bạn đọc', N'66', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 1, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (4, N'Ý kiến bạn đọc', N'666', N'6', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 1, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (5, N'Ý kiến bạn đọc', N'444', N'444', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 1, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (6, N'Liên hệ tòa soạn', N'333', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (7, N'Liên hệ tòa soạn', N'44', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (8, N'Liên hệ tòa soạn', N'44', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (9, N'Liên hệ tòa soạn', N'44', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (10, N'Liên hệ tòa soạn', N'777', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (11, N'Liên hệ tòa soạn', N'5555', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (12, N'Liên hệ tòa soạn', N'6666', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (13, N'Liên hệ tòa soạn', N'555666', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (14, N'Liên hệ tòa soạn', N'333', N'5', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (15, N'Liên hệ tòa soạn', N'333', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (16, N'Liên hệ tòa soạn', N'333', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (17, N'Liên hệ tòa soạn', N'444', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (18, N'Liên hệ tòa soạn', N'Tôi cần liên hệ với tạp chí!', N'Lê Thế Quyền', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (19, N'Liên hệ tòa soạn', N'333', N'3333', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-22' AS Date), NULL, NULL, 0, 3, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (20, N'Ý kiến bạn đọc', N'333', N'3', N'333@gmail.com', NULL, NULL, CAST(N'2020-07-23' AS Date), NULL, NULL, 0, 1, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (21, N'Ý kiến bạn đọc', N'Chưa bao giờ tôi được đọc bài viết hay đến vậy. Ngàn like cho tạp chí !!!', N'Nguyễn Văn Tèo', N'nguyenvanteo@gmail.com', NULL, NULL, CAST(N'2020-07-28' AS Date), NULL, NULL, 0, 1, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (23, N'Đăng ký nghiên cứu', N'1123', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T12:38:22.443' AS DateTime), CAST(N'2020-08-02T12:38:22.443' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (24, N'Đăng ký nghiên cứu', N'2222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T12:39:25.547' AS DateTime), CAST(N'2020-08-02T12:39:25.547' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (25, N'Đăng ký nghiên cứu', N'2222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T12:45:11.347' AS DateTime), CAST(N'2020-08-02T12:45:11.347' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (26, N'Đăng ký nghiên cứu', N'1111', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T12:47:05.717' AS DateTime), CAST(N'2020-08-02T12:47:05.717' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (27, N'Đăng ký nghiên cứu', N'123', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T12:49:16.963' AS DateTime), CAST(N'2020-08-02T12:49:16.963' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (28, N'Đăng ký nghiên cứu', N'666', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T12:50:18.763' AS DateTime), CAST(N'2020-08-02T12:50:18.763' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (29, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T12:50:38.563' AS DateTime), CAST(N'2020-08-02T12:50:38.563' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (30, N'Đăng ký nghiên cứu', N'123', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:05:03.700' AS DateTime), CAST(N'2020-08-02T14:05:03.700' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (31, N'Đăng ký nghiên cứu', N'2222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:06:20.727' AS DateTime), CAST(N'2020-08-02T14:06:20.727' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (32, N'Đăng ký nghiên cứu', N'2222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:06:23.933' AS DateTime), CAST(N'2020-08-02T14:06:23.933' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (33, N'Đăng ký nghiên cứu', N'2222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:06:36.603' AS DateTime), CAST(N'2020-08-02T14:06:36.603' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (34, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:17:17.477' AS DateTime), CAST(N'2020-08-02T14:17:17.477' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (35, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:18:25.620' AS DateTime), CAST(N'2020-08-02T14:18:25.620' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (36, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:19:03.167' AS DateTime), CAST(N'2020-08-02T14:19:03.167' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (37, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:19:19.010' AS DateTime), CAST(N'2020-08-02T14:19:19.010' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (38, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:23:30.857' AS DateTime), CAST(N'2020-08-02T14:23:30.857' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (39, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:26:00.830' AS DateTime), CAST(N'2020-08-02T14:26:00.833' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (40, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:33:15.727' AS DateTime), CAST(N'2020-08-02T14:33:15.727' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (41, N'Đăng ký nghiên cứu', N'3333', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:33:38.923' AS DateTime), CAST(N'2020-08-02T14:33:38.923' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (42, N'Đăng ký nghiên cứu', N'222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:35:54.710' AS DateTime), CAST(N'2020-08-02T14:35:54.710' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (43, N'Đăng ký nghiên cứu', N'9999', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T14:37:26.527' AS DateTime), CAST(N'2020-08-02T14:37:26.527' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (44, N'Đăng ký nghiên cứu', N'999', N'3333', N'333@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T15:10:26.750' AS DateTime), CAST(N'2020-08-02T15:10:26.750' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (45, N'Đăng ký nghiên cứu', N'nd test', N'test', N'test@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T16:37:30.443' AS DateTime), CAST(N'2020-08-02T16:37:30.443' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (46, N'Đăng ký nghiên cứu', N'reset', N'3333', N'333@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T16:39:13.400' AS DateTime), CAST(N'2020-08-02T16:39:13.400' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (47, N'Đăng ký nghiên cứu', N'fgfghfgh', N'3333', N'333@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T16:40:01.727' AS DateTime), CAST(N'2020-08-02T16:40:01.727' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (48, N'Đăng ký nghiên cứu', N'777', N'3333', N'333@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T16:42:22.217' AS DateTime), CAST(N'2020-08-02T16:42:22.217' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (49, N'Đăng ký nghiên cứu', N'dgfhdgdgh', N'3333', N'333@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T16:48:33.450' AS DateTime), CAST(N'2020-08-02T16:48:33.450' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (50, N'Đăng ký nghiên cứu', N'loading', N'test', N'333@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T16:58:36.723' AS DateTime), CAST(N'2020-08-02T16:58:36.723' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (51, N'Đăng ký nghiên cứu', N'Test đăng ký', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T17:32:48.463' AS DateTime), CAST(N'2020-08-02T17:32:48.463' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (52, N'Đăng ký nghiên cứu', N'222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T17:33:05.587' AS DateTime), CAST(N'2020-08-02T17:33:05.587' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (53, N'Đăng ký nghiên cứu', N'1111', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T17:33:44.137' AS DateTime), CAST(N'2020-08-02T17:33:44.137' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (54, N'Đăng ký nghiên cứu', N'111222', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T17:34:36.193' AS DateTime), CAST(N'2020-08-02T17:34:36.193' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (55, N'Đăng ký nghiên cứu', N'Tôi muốn đăng ký viết bài TẠP CHÍ SỐ ĐỊNH KỲ', N'Quyền', N'quyenlt2908@gmail.com', N'N/A', N'N/A', CAST(N'2020-08-02' AS Date), CAST(N'2020-08-02T17:38:21.903' AS DateTime), CAST(N'2020-08-02T17:38:21.903' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (56, N'Đăng ký nghiên cứu', N'tghjjghj', N'Quách Trang', N'admin@gmail.com', N'N/A', N'N/A', CAST(N'2020-09-15' AS Date), CAST(N'2020-09-15T17:08:20.567' AS DateTime), CAST(N'2020-09-15T17:08:20.567' AS DateTime), 0, 4, NULL)
INSERT [dbo].[WebContacts] ([ID], [Title], [Body], [FullName], [Email], [Mobile], [Address], [CreatedDate], [NgayBatDau], [NgayKetThuc], [LoaiDonHang], [LoaiLienHe], [WebModuleID]) VALUES (57, N'Đăng ký nghiên cứu', N'ádđf', N'Quách Trang', N'admin@gmail.com', N'N/A', N'N/A', CAST(N'2020-09-15' AS Date), CAST(N'2020-09-15T17:09:51.823' AS DateTime), CAST(N'2020-09-15T17:09:51.823' AS DateTime), 0, 4, 66)
SET IDENTITY_INSERT [dbo].[WebContacts] OFF
GO
SET IDENTITY_INSERT [dbo].[WebContentUploads] ON 

INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (1, N'sample-mp4-file.mp4', N'sample-mp4-file-mp4', N'/uploads/video/072020/sample-mp4-file_8ba47b2c.mp4', N'8d8265b42f1ce6abk49stlpft', NULL, CAST(N'2020-07-12T12:05:39.003' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (2, N'tc.png', N'tc-png', N'/uploads/072020/tc_6683050f.png', N'8d8265c84f3903duol8n2i65i', NULL, CAST(N'2020-07-12T12:10:31.060' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (3, N'tc.png', N'tc-png', N'/uploads/072020/tc_ad48ee45.png', N'8d8265c9399d9e3bpow5q6hk3', NULL, CAST(N'2020-07-12T12:10:42.630' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (4, N'tc.png', N'tc-png', N'/uploads/072020/tc_ad27ee45.png', N'8d8265c9a146b3bqti2fe84si', NULL, CAST(N'2020-07-12T12:10:52.297' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (5, N'mov_bbb.mp4', N'mov_bbb-mp4', N'/uploads/file/072020/mov_bbb_f33b1bd9.mp4', N'8d8265ca80a49d7j8ifpn4elp', NULL, CAST(N'2020-07-12T12:11:16.647' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (6, N'qc6', N'qc6-png', N'/uploads/072020/qc6_ba25edd3.PNG', N'Advertisement', NULL, CAST(N'2020-07-12T13:22:49.340' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (7, N'tc.png', N'tc-png', N'/uploads/072020/tc_9c68ce5b.png', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-12T16:16:03.120' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (8, N'tc.png', N'tc-png', N'/uploads/072020/tc_f3e2d5b.png', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-12T16:21:38.067' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (9, N'so5-2020_full.pdf', N'so5-2020_full-pdf', N'/uploads/pdf/072020/so5-2020_full_e152d5b.pdf', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-12T16:21:38.483' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (10, N'tc.png', N'tc-png', N'/uploads/072020/tc_f5f2d25.png', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-12T16:21:57.117' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (11, N'Tap chi Moi truong_so 4-2020 (full).pdf', N'tap-chi-moi-truong_so-4-2020-full-pdf', N'/uploads/pdf/072020/Tap chi Moi truong_so 4-2020 (full)_f3e2d25.pdf', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-12T16:21:57.170' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (12, N'tc.png', N'tc-png', N'/uploads/072020/tc_7e7deee8.png', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-12T16:22:10.883' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (13, N'Tap chi Moi truong_so 3-2020.pdf', N'tap-chi-moi-truong_so-3-2020-pdf', N'/uploads/pdf/072020/Tap chi Moi truong_so 3-2020_7e7deee8.pdf', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-12T16:22:10.963' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (14, N'tc.png', N'tc-png', N'/uploads/072020/tc_7f01ef09.png', N'8d825ee2a62ae8aufurp87fr1', NULL, CAST(N'2020-07-12T16:22:24.883' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (15, N'Tap chi Moi truong_so 2-2020 (tach QC)_du 4 bia.pdf', N'tap-chi-moi-truong_so-2-2020-tach-qc-_du-4-bia-pdf', N'/uploads/pdf/072020/Tap chi Moi truong_so 2-2020 (tach QC)_du 4 bia_7f01ef09.pdf', N'8d825ee2a62ae8aufurp87fr1', NULL, CAST(N'2020-07-12T16:22:25.010' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (16, N'tc.png', N'tc-png', N'/uploads/072020/tc_7d54eeaa.png', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-12T16:22:40.093' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (17, N'so 1 2020.pdf', N'so-1-2020-pdf', N'/uploads/pdf/072020/so 1 2020_7e7dedd3.pdf', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-12T16:22:40.183' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (18, N'tc.png', N'tc-png', N'/uploads/072020/tc_3f351d02.png', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-12T17:23:02.030' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (19, N'Tap chi Moi truong_so 4-2020 (full).pdf', N'tap-chi-moi-truong_so-4-2020-full-pdf', N'/uploads/pdf/072020/Tap chi Moi truong_so 4-2020 (full)_3ef31da3.pdf', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-12T17:23:13.070' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (20, N'Tap chi Moi truong_so 4-2020 (full).pdf', N'tap-chi-moi-truong_so-4-2020-full-pdf', N'/uploads/pdf/072020/Tap chi Moi truong_so 4-2020 (full)_22432c84.pdf', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-12T17:31:46.147' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (21, N'tc.png', N'tc-png', N'/uploads/image/072020/tc_43880d6f.png', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-12T17:35:33.390' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (22, N'tc.png', N'tc-png', N'/uploads/image/072020/tc_3d5f3eb6.png', N'8d825ee2a62ae8aufurp87fr1', NULL, CAST(N'2020-07-12T17:38:12.013' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (23, N'tc.png', N'tc-png', N'/uploads/image/072020/tc_3dc23e78.png', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-12T17:38:34.160' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (24, N'so 1 2020.pdf', N'so-1-2020-pdf', N'/uploads/pdf/072020/so 1 2020_3dc23e78.pdf', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-12T17:38:34.237' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (25, N'so 1 2020.pdf', N'so-1-2020-pdf', N'/uploads/pdf/072020/so 1 2020_3c363e42.pdf', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-12T17:38:58.990' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (26, N'Tap chi Moi truong_so 4-2020 (full).pdf', N'tap-chi-moi-truong_so-4-2020-full-pdf', N'/uploads/pdf/072020/Tap chi Moi truong_so 4-2020 (full)_35cc1d65.pdf', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-12T17:43:38.490' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (27, N'Tap chi Moi truong_so 4-2020 (full).pdf', N'tap-chi-moi-truong_so-4-2020-full-pdf', N'/uploads/pdf/072020/Tap chi Moi truong_so 4-2020 (full)_a97fcefc.pdf', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-12T17:56:18.037' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (28, N'slide3.png', N'slide3-png', N'/uploads/image/072020/slide3_9f5e998.png', N'WebSlide', NULL, CAST(N'2020-07-12T23:28:59.780' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (29, N'slide2.png', N'slide2-png', N'/uploads/image/072020/slide2_382074fd.png', N'WebSlide', NULL, CAST(N'2020-07-12T23:29:06.737' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (30, N'slide1.png', N'slide1-png', N'/uploads/image/072020/slide1_aba2df6.png', N'WebSlide', NULL, CAST(N'2020-07-12T23:29:13.100' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (31, N'banner-top', N'banner-top-png', N'/uploads/072020/banner-top_ac4e5cb1.png', N'Advertisement', NULL, CAST(N'2020-07-12T23:39:01.023' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (32, N'qc4', N'qc4-png', N'/uploads/072020/qc4_7933b13a.PNG', N'Advertisement', NULL, CAST(N'2020-07-14T22:21:20.587' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (33, N'toa damonkk.png', N'toa-damonkk-png', N'/uploads/image/072020/toa damonkk_49f4e7e5.png', N'8d826693a28236cenk5vuygum', NULL, CAST(N'2020-07-17T00:16:57.890' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (34, N'toa damonkk.png', N'toa-damonkk-png', N'/uploads/image/072020/toa damonkk_8b35811b.png', N'8d826693a28236cenk5vuygum', NULL, CAST(N'2020-07-17T00:18:39.590' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (35, N'thong tin bao chi.png', N'thong-tin-bao-chi-png', N'/uploads/image/072020/thong tin bao chi_4fcc992b.png', N'8d82668cbd6f4f9hi62px3epf', NULL, CAST(N'2020-07-17T00:19:52.500' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (36, N'gap bc 3.png', N'gap-bc-3-png', N'/uploads/image/072020/gap bc 3_d44cc3f5.png', N'8d829e74cd107e72x1u669t4w', NULL, CAST(N'2020-07-17T00:22:27.837' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (37, N'giang 25.png', N'giang-25-png', N'/uploads/image/072020/giang 25_b7b5dc98.png', N'8d825f98ac425e3g55x1wvout', NULL, CAST(N'2020-07-17T00:23:56.297' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (38, N'vũ việt hiếu.png', N'vu-viet-hieu-png', N'/uploads/image/072020/vũ việt hiếu_23b36ab3.png', N'8d829e80fc39fd2n7vfycfe6n', NULL, CAST(N'2020-07-17T00:27:06.287' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (39, N'tram qtaa.png', N'tram-qtaa-png', N'/uploads/image/072020/tram qtaa_39dd6cac.png', N'8d825f982623ac78bpj8wec6i', NULL, CAST(N'2020-07-17T00:27:56.987' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (40, N'đảng bộ 5.png', N'dang-bo-5-png', N'/uploads/image/072020/đảng bộ 5_8b34fdf8.png', N'8d825f9773ecb82fkrqpb2cdk', NULL, CAST(N'2020-07-17T00:28:39.813' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (41, N'cay xanh.png', N'cay-xanh-png', N'/uploads/image/072020/cay xanh_502f08d9.png', N'8d825f9efa9ca79zrcobr67vd', NULL, CAST(N'2020-07-17T00:31:12.800' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (42, N'các bon vĩnh phúc.png', N'cac-bon-vinh-phuc-png', N'/uploads/image/072020/các bon vĩnh phúc_f82f39b7.png', N'8d825f9f7727c33do8tvm41b7', NULL, CAST(N'2020-07-17T00:33:43.377' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (43, N'cong trinh xanh 2.png', N'cong-trinh-xanh-2-png', N'/uploads/image/072020/cong trinh xanh 2_250ed341.png', N'8d825f9fe2f0b99ume7od7sjp', NULL, CAST(N'2020-07-17T00:35:16.437' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (44, N'cong trinh xanh 1.png', N'cong-trinh-xanh-1-png', N'/uploads/image/072020/cong trinh xanh 1_7bb2b659.png', N'8d825f9fe2f0b99ume7od7sjp', NULL, CAST(N'2020-07-17T00:35:52.820' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (45, N'chau á lựa chọn.png', N'chau-a-lua-chon-png', N'/uploads/image/072020/chau á lựa chọn_b6866997.png', N'8d825f9a4e0e20b4k3xmpc7sk', NULL, CAST(N'2020-07-17T00:38:15.407' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (46, N'NL mat troi.png', N'nl-mat-troi-png', N'/uploads/image/072020/NL mat troi_eacf779e.png', N'8d829e9d1b022d7igrozxbd5a', NULL, CAST(N'2020-07-17T00:40:08.847' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (47, N'thực trạng chăn nuôi.png', N'thuc-trang-chan-nuoi-png', N'/uploads/image/072020/thực trạng chăn nuôi_24dc71ec.png', N'8d829ea053343cfzwpk851ssf', NULL, CAST(N'2020-07-17T00:41:30.503' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (48, N'noi nha pin.png', N'noi-nha-pin-png', N'/uploads/image/072020/noi nha pin_4ed277ee.png', N'8d829ea42f8f6a3iowzangqt9', NULL, CAST(N'2020-07-17T00:43:09.677' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (49, N'nghien gia 2.jpg', N'nghien-gia-2-jpg', N'/uploads/image/072020/nghien gia 2_65880ebd.jpg', N'8d825f9c2db113b9u6mkx4wne', NULL, CAST(N'2020-07-17T00:45:00.240' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (50, N'onbm2.png', N'onbm2-png', N'/uploads/image/072020/onbm2_23b24237.png', N'8d829eaddbf57eb6cdsr8jh6b', NULL, CAST(N'2020-07-17T00:47:04.860' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (51, N'nhâm 5.png', N'nham-5-png', N'/uploads/image/072020/nhâm 5_1e6f0965.png', N'8d825f9926f04c3j177bwj8de', NULL, CAST(N'2020-07-17T00:52:13.047' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (52, N'nhâm 5.png', N'nham-5-png', N'/uploads/image/072020/nhâm 5_c7cb26d1.png', N'8d825f9926f04c3j177bwj8de', NULL, CAST(N'2020-07-17T00:52:53.073' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (53, N'nhâm 5.png', N'nham-5-png', N'/uploads/image/072020/nhâm 5_4ed1f409.png', N'8d825f999bf51aerqm76euf6x', NULL, CAST(N'2020-07-17T00:53:07.200' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (54, N'toa damonkk.png', N'toa-damonkk-png', N'/uploads/image/072020/toa damonkk_f82e1175.png', N'8d825f999bf51aerqm76euf6x', NULL, CAST(N'2020-07-17T00:53:47.403' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (55, N'Jun jung jăng.png', N'jun-jung-jang-png', N'/uploads/image/072020/Jun jung jăng_39dbc06a.png', N'8d82907f626b608hhy1ryq7di', NULL, CAST(N'2020-07-17T00:57:53.330' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (56, N'6.png', N'6-png', N'/uploads/image/072020/6_6d43a161.png', N'8d8265c84f3903duol8n2i65i', NULL, CAST(N'2020-07-17T02:27:09.270' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (57, N'3.png', N'3-png', N'/uploads/image/072020/3_3ad005ef.png', N'8d8265c9399d9e3bpow5q6hk3', NULL, CAST(N'2020-07-17T02:28:33.167' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (58, N'6 (1).png', N'6-1-png', N'/uploads/image/072020/6 (1)_560c7e2a.png', N'8d8265c9a146b3bqti2fe84si', NULL, CAST(N'2020-07-17T02:29:44.727' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (59, N'gtd3.jpg', N'gtd3-jpg', N'/uploads/image/072020/gtd3_62dd2f7e.jpg', N'8d829fa1642a517n9bxcfqium', NULL, CAST(N'2020-07-17T02:36:39.523' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (60, N'3 (1).png', N'3-1-png', N'/uploads/image/072020/3 (1)_fded1e8d.png', N'8d829fa3d04e226j75vdt6h8b', NULL, CAST(N'2020-07-17T02:38:25.900' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (61, N'tc12.jpg', N'tc12-jpg', N'/uploads/image/072020/tc12_152b552c.jpg', N'8d829fa7c426a10sdgwecrovt', NULL, CAST(N'2020-07-17T02:39:58.513' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (62, N'Screenshot_5.png', N'screenshot_5-png', N'/uploads/image/072020/Screenshot_5_32f8a42.png', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-17T03:01:47.803' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (63, N'Screenshot_6.png', N'screenshot_6-png', N'/uploads/image/072020/Screenshot_6_206eb6cc.png', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-17T03:03:29.417' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (64, N'Screenshot_7.png', N'screenshot_7-png', N'/uploads/image/072020/Screenshot_7_3baaa625.png', N'8d825ee2a62ae8aufurp87fr1', NULL, CAST(N'2020-07-17T03:05:00.457' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (65, N'Screenshot_8.png', N'screenshot_8-png', N'/uploads/image/072020/Screenshot_8_206d9508.png', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-17T03:05:09.890' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (66, N'Screenshot_9.png', N'screenshot_9-png', N'/uploads/image/072020/Screenshot_9_dd1d5183.png', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-17T03:06:41.047' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (67, N'Screenshot_10.png', N'screenshot_10-png', N'/uploads/image/072020/Screenshot_10_3ba9a2e8.png', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-17T03:07:50.163' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (68, N'Screenshot_11.png', N'screenshot_11-png', N'/uploads/image/072020/Screenshot_11_3bb1ba0d.png', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-17T03:08:50.450' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (69, N'Screenshot_12.png', N'screenshot_12-png', N'/uploads/image/072020/Screenshot_12_68499188.png', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-17T03:10:21.790' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (70, N'Screenshot_13.png', N'screenshot_13-png', N'/uploads/image/072020/Screenshot_13_ab98da52.png', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-17T03:11:19.937' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (71, N'chuyen de TA 1-2020 (1).pdf', N'chuyen-de-ta-1-2020-1-pdf', N'/uploads/pdf/072020/chuyen de TA 1-2020 (1)_51731475.pdf', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-17T03:12:42.670' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (72, N'Screenshot_14.png', N'screenshot_14-png', N'/uploads/image/072020/Screenshot_14_5172a198.png', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-17T03:13:02.187' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (73, N'Screenshot_15.png', N'screenshot_15-png', N'/uploads/image/072020/Screenshot_15_ab974631.png', N'8d825ee2a62ae8aufurp87fr1', NULL, CAST(N'2020-07-17T03:14:59.163' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (74, N'Screenshot_16.png', N'screenshot_16-png', N'/uploads/image/072020/Screenshot_16_6846f5a9.png', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-17T03:15:42.020' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (75, N'Screenshot_17.png', N'screenshot_17-png', N'/uploads/image/072020/Screenshot_17_469df8d2.png', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-17T03:17:35.653' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (76, N'CD2 online.pdf', N'cd2-online-pdf', N'/uploads/pdf/072020/CD2 online_469df8d2.pdf', N'8d825efc785827bsqq1hdug66', NULL, CAST(N'2020-07-17T03:17:35.653' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (77, N'Screenshot_18.png', N'screenshot_18-png', N'/uploads/image/072020/Screenshot_18_e8194fb6.png', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-17T03:18:34.587' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (78, N'CĐ TV1-2020 .pdf', N'cd-tv1-2020-pdf', N'/uploads/pdf/072020/CĐ TV1-2020 _e8194fb6.pdf', N'8d825efc2b3522flyrlo7ervw', NULL, CAST(N'2020-07-17T03:18:34.587' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (79, N'Screenshot_19.png', N'screenshot_19-png', N'/uploads/image/072020/Screenshot_19_9c09ae9.png', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-17T03:19:50.923' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (80, N'So CD TV 4-2019.pdf', N'so-cd-tv-4-2019-pdf', N'/uploads/pdf/072020/So CD TV 4-2019_9c09ae9.pdf', N'8d825ef934eedefz7fkdgpe61', NULL, CAST(N'2020-07-17T03:19:50.940' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (81, N'Screenshot_20.png', N'screenshot_20-png', N'/uploads/image/072020/Screenshot_20_ebed2f05.png', N'8d825ee2a62ae8aufurp87fr1', NULL, CAST(N'2020-07-17T03:20:52.717' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (82, N'So CD TV 3-2019.pdf', N'so-cd-tv-3-2019-pdf', N'/uploads/pdf/072020/So CD TV 3-2019_ebed2f05.pdf', N'8d825ee2a62ae8aufurp87fr1', NULL, CAST(N'2020-07-17T03:20:52.730' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (83, N'Screenshot_21.png', N'screenshot_21-png', N'/uploads/image/072020/Screenshot_21_d5174256.png', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-17T03:21:41.297' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (84, N'So CD TV 2-2019.pdf', N'so-cd-tv-2-2019-pdf', N'/uploads/pdf/072020/So CD TV 2-2019_d5174256.pdf', N'8d825ca807ecdcfu6ys5k94et', NULL, CAST(N'2020-07-17T03:21:41.310' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (85, N'html__0015_Layer-43', N'html__0015_layer-43-png', N'/uploads/072020/html__0015_Layer-43_166776d9.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:24:40.670' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (86, N'html__0014_Layer-44', N'html__0014_layer-44-png', N'/uploads/072020/html__0014_Layer-44_f9d09004.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:25:39.257' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (87, N'html__0011_Layer-35', N'html__0011_layer-35-png', N'/uploads/072020/html__0011_Layer-35_4f188521.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:27:21.987' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (88, N'logo_Đảng', N'logo_dang-jpg', N'/uploads/072020/logo_Đảng_a681840a.jpg', N'Advertisement', NULL, CAST(N'2020-07-17T11:39:18.523' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (89, N'HSTL', N'hstl-png', N'/uploads/072020/HSTL_7b2f91f2.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:39:36.663' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (90, N'bvmt ntm-01', N'bvmt-ntm-01-png', N'/uploads/072020/bvmt ntm-01_f99b999f.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:41:50.240' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (91, N'lien he qc a Bach-02', N'lien-he-qc-a-bach-02-png', N'/uploads/072020/lien he qc a Bach-02_39bba016.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:43:33.227' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (92, N'html__0010_Layer-38', N'html__0010_layer-38-png', N'/uploads/072020/html__0010_Layer-38_f3607114.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:46:14.460' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (93, N'html__0009_Layer-39', N'html__0009_layer-39-png', N'/uploads/072020/html__0009_Layer-39_e34979b8.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:47:13.970' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (94, N'html__0001_Layer-19', N'html__0001_layer-19-png', N'/uploads/072020/html__0001_Layer-19_e9b6bc0.png', N'Advertisement', NULL, CAST(N'2020-07-17T11:47:31.850' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (95, N'ht giang huong.png', N'ht-giang-huong-png', N'/uploads/image/072020/ht giang huong_7c2a3cea.png', N'8d82eb2815fd98f7qzc8fqcs3', NULL, CAST(N'2020-07-23T02:46:06.663' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (96, N'ht giang huong.png', N'ht-giang-huong-png', N'/uploads/image/072020/ht giang huong_1e846c29.png', N'8d82eb2815fd98f7qzc8fqcs3', NULL, CAST(N'2020-07-23T02:47:41.687' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (97, N'wetland.jpg', N'wetland-jpg', N'/uploads/072020/wetland_4f07e30c.jpg', N'8d82eb74478f97cb4k2dmg6tr', NULL, CAST(N'2020-07-23T03:20:09.320' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (98, N'Nh%c3%a0%20kh%c3%b4ng%20r%c3%a1c.jpg', N'nh-c3-a0-20kh-c3-b4ng-20r-c3-a1c-jpg', N'/uploads/072020/Nh%c3%a0%20kh%c3%b4ng%20r%c3%a1c_ce119b7b.jpg', N'8d832429fc7c3a6slnnskjjnn', NULL, CAST(N'2020-07-27T15:35:30.123' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (99, N'Nhà không rác.jpg', N'nha-khong-rac-jpg', N'/uploads/image/072020/Nhà không rác_1b622ac4.jpg', N'8d832429fc7c3a6slnnskjjnn', NULL, CAST(N'2020-07-27T15:37:06.173' AS DateTime), N'admin', N'image/jpeg')
GO
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (100, N'bc1.jpg', N'bc1-jpg', N'/uploads/image/072020/bc1_631f16f5.jpg', N'8d8324321285cc5v88jdqho15', NULL, CAST(N'2020-07-27T15:39:14.723' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (101, N'sxanh.jpg', N'sxanh-jpg', N'/uploads/image/072020/sxanh_a46f83d2.jpg', N'8d8324387c60d55i2cp9l2j2u', NULL, CAST(N'2020-07-27T15:41:56.147' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (102, N'sách xanh.jpg', N'sach-xanh-jpg', N'/uploads/image/072020/sách xanh_b5449e22.jpg', N'8d83243b23ba3cbm2y4yovole', NULL, CAST(N'2020-07-27T15:43:14.423' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (103, N'đồ án yên bái.png', N'do-an-yen-bai-png', N'/uploads/image/072020/đồ án yên bái_65dc2cbc.png', N'8d8324615405e26co3y3ktxo2', NULL, CAST(N'2020-07-27T16:00:10.807' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (104, N'fris%202.png', N'fris-202-png', N'/uploads/082020/fris%202_89135ed6.png', N'8d836cfc96b0d7dww829zsdsb', NULL, CAST(N'2020-08-02T10:36:21.457' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (105, N'fris%202.png', N'fris-202-png', N'/uploads/082020/fris%202_139d7bde.png', N'8d836cfc96b0d7dww829zsdsb', NULL, CAST(N'2020-08-02T10:36:33.737' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (106, N'fris 2.png', N'fris-2-png', N'/uploads/image/082020/fris 2_37269b32.png', N'8d836cfc96b0d7dww829zsdsb', NULL, CAST(N'2020-08-02T10:37:01.903' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (107, N'vidan 1.png', N'vidan-1-png', N'/uploads/image/082020/vidan 1_46da1858.png', N'8d836d012681dbdkp8iojiigb', NULL, CAST(N'2020-08-02T10:38:28.413' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (108, N'vidan 1.png', N'vidan-1-png', N'/uploads/image/082020/vidan 1_b9448d02.png', N'8d836d012681dbdkp8iojiigb', NULL, CAST(N'2020-08-02T10:39:32.657' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (109, N'business.jpg', N'business-jpg', N'/uploads/image/082020/business_8e59d189.jpg', N'8d836d079d832b93zdgv1k8i5', NULL, CAST(N'2020-08-02T10:41:10.647' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (110, N'1.png', N'1-png', N'/uploads/image/082020/1_d4bac768.png', N'8d8265c9399d9e3bpow5q6hk3', NULL, CAST(N'2020-08-11T18:33:09.303' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (111, N'2.png', N'2-png', N'/uploads/image/082020/2_af67d75e.png', N'8d8265c9399d9e3bpow5q6hk3', NULL, CAST(N'2020-08-11T18:41:07.470' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (112, N'banner-new', N'banner-new-jpg', N'/uploads/082020/banner-new_3f7ec63c.jpg', N'Advertisement', NULL, CAST(N'2020-08-12T17:23:34.893' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (113, N'gef2.jpg', N'gef2-jpg', N'/uploads/image/082020/gef2_67a650aa.jpg', N'8d8265c9a146b3bqti2fe84si', NULL, CAST(N'2020-08-12T19:32:20.543' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (114, N'keny%202.png', N'keny-202-png', N'/uploads/082020/keny%202_8cd39d70.png', N'WebModule', NULL, CAST(N'2020-08-12T19:46:55.253' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (115, N'keny 2.png', N'keny-2-png', N'/uploads/image/082020/keny 2_92d37d98.png', N'WebModule', NULL, CAST(N'2020-08-12T19:47:35.930' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (116, N'keny 2.png', N'keny-2-png', N'/uploads/image/082020/keny 2_448c2ec4.png', N'8d83ef907d93bbe8ix76ppnjh', NULL, CAST(N'2020-08-12T19:51:50.820' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (117, N'ninh tc.png', N'ninh-tc-png', N'/uploads/image/082020/ninh tc_2db7d131.png', N'8d83ef94ed8a02cwli53j3ofu', NULL, CAST(N'2020-08-12T19:53:33.657' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (118, N'banner_top.jpg', N'banner_top-jpg', N'/uploads/image/082020/banner_top_abd11506.jpg', N'8d84302ecbad882k2nbymkfhq', NULL, CAST(N'2020-08-17T23:13:10.400' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (119, N'anh_tin.PNG', N'anh_tin-png', N'/uploads/image/082020/anh_tin_5057a719.PNG', N'8d84304316b1568gqyirvcxfd', NULL, CAST(N'2020-08-17T23:23:45.837' AS DateTime), N'writer1', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (120, N'anh_tin_2.PNG', N'anh_tin_2-png', N'/uploads/image/082020/anh_tin_2_76981acf.PNG', N'8d84305832bdb08a5xsx3xsfu', NULL, CAST(N'2020-08-17T23:32:16.043' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (121, N'banner_top.jpg', N'banner_top-jpg', N'/uploads/image/082020/banner_top_eda913ce.jpg', N'8d8430864717ae4nbc2j5e5lq', NULL, CAST(N'2020-08-17T23:51:16.533' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (122, N'newlogo', N'newlogo-png', N'/uploads/082020/newlogo_83a313f.png', N'Advertisement', NULL, CAST(N'2020-08-19T18:40:57.513' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (123, N'123.png', N'123-png', N'/uploads/image/082020/123_296bd4ff.png', N'8d84497217eaefcnbrioc4nqr', NULL, CAST(N'2020-08-19T23:25:38.927' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (124, N'sample.png', N'sample-png', N'/uploads/file/082020/sample_7e7a4388.png', N'8d84498731ee45emg3sqy4xdx', NULL, CAST(N'2020-08-19T23:35:57.147' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (125, N'banner-new_3f7ec63c.jpg', N'banner-new_3f7ec63c-jpg', N'/uploads/image/082020/banner-new_3f7ec63c_7e7a4388.jpg', N'8d84498731ee45emg3sqy4xdx', NULL, CAST(N'2020-08-19T23:35:57.417' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (126, N'234.PNG', N'234-png', N'/uploads/image/082020/234_ddb33fed.PNG', N'8d8449944fccc5asd2lmskhte', NULL, CAST(N'2020-08-19T23:42:55.370' AS DateTime), N'writer1', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (127, N'345.PNG', N'345-png', N'/uploads/image/082020/345_c8e52b21.PNG', N'8d844999c427757kegbhis5l1', NULL, CAST(N'2020-08-19T23:44:17.023' AS DateTime), N'writer1', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (128, N'banner_center', N'banner_center-png', N'/uploads/082020/banner_center_98bdabdb.PNG', N'Advertisement', NULL, CAST(N'2020-08-19T23:54:09.870' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (129, N'444.PNG', N'444-png', N'/uploads/image/082020/444_25046f35.PNG', N'8d844a04577c126kc8t657fe9', NULL, CAST(N'2020-08-20T00:33:28.130' AS DateTime), N'tongbientap', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (130, N'ntk2.PNG', N'ntk2-png', N'/uploads/image/082020/ntk2_92afbc20.PNG', N'8d846d2ddec9f0fgq8ffiy9wp', NULL, CAST(N'2020-08-22T19:38:14.583' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (131, N'anh_ava.PNG', N'anh_ava-png', N'/uploads/image/082020/anh_ava_937ca75d.PNG', N'8d84ae11b1e7809iu1e18il1e', NULL, CAST(N'2020-08-27T23:36:20.547' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (132, N'3333.PNG', N'3333-png', N'/uploads/image/082020/3333_8b105d5b.PNG', N'8d84ae11b1e7809iu1e18il1e', NULL, CAST(N'2020-08-27T23:39:29.687' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (133, N'anh_ava (1).png', N'anh_ava-1-png', N'/uploads/image/082020/anh_ava (1)_937f6c9b.png', N'8d84ae11b1e7809iu1e18il1e', NULL, CAST(N'2020-08-27T23:46:25.107' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (134, N'anh_ava (1).png', N'anh_ava-1-png', N'/uploads/image/082020/anh_ava (1)_612f72d9.png', N'8d84ae43d22e269gd78z5b8bg', NULL, CAST(N'2020-08-27T23:55:43.520' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (135, N'anh_ava (2).png', N'anh_ava-2-png', N'/uploads/image/082020/anh_ava (2)_616dec2.png', N'8d84ae43d22e269gd78z5b8bg', NULL, CAST(N'2020-08-28T00:04:27.510' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (136, N'banner-middle', N'4179-jpg_wh860-png', N'/uploads/082020/4179.jpg_wh860_861e37d7.png', N'Advertisement', NULL, CAST(N'2020-08-28T13:50:31.697' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (137, N'5.6.2020.jpg', N'5-6-2020-jpg', N'/uploads/video/092020/5.6.2020_3907d55.jpg', N'8d8265c9a146b3bqti2fe84si', NULL, CAST(N'2020-09-10T18:34:30.257' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (138, N'banner-tcmt', N'banner-tcmt-jpg', N'/uploads/092020/banner-tcmt_834e50db.jpg', N'Advertisement', NULL, CAST(N'2020-09-16T13:46:01.890' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (139, N'banner-tcmt-2', N'banner-tcmt-2-jpg', N'/uploads/092020/banner-tcmt-2_c24d6c3c.jpg', N'Advertisement', NULL, CAST(N'2020-09-16T14:16:08.737' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (140, N'banner-tcmt-3', N'banner-tcmt-3-jpg', N'/uploads/092020/banner-tcmt-3_d91dddd.jpg', N'Advertisement', NULL, CAST(N'2020-09-16T14:31:26.837' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (141, N'banner-tcmt-4', N'banner-tcmt-4-jpg', N'/uploads/092020/banner-tcmt-4_dc40ced2.jpg', N'Advertisement', NULL, CAST(N'2020-09-16T15:02:06.133' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (142, N'Requirement.PNG', N'requirement-png', N'/uploads/image/092020/Requirement_182e4277.PNG', N'8d85a98b835c4a1kyshthiqun', NULL, CAST(N'2020-09-16T23:32:25.267' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (143, N'mov_bbb_f33b1bd9.mp4', N'mov_bbb_f33b1bd9-mp4', N'/uploads/video/092020/mov_bbb_f33b1bd9_4d2db78e.mp4', NULL, NULL, CAST(N'2020-09-17T11:43:14.247' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (144, N'mov_bbb_f33b1bd9.mp4', N'mov_bbb_f33b1bd9-mp4', N'/uploads/video/092020/mov_bbb_f33b1bd9_c92c42f3.mp4', NULL, NULL, CAST(N'2020-09-17T11:44:26.600' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (145, N'mov_bbb_f33b1bd9.mp4', N'mov_bbb_f33b1bd9-mp4', N'#', NULL, NULL, CAST(N'2020-09-17T11:51:45.773' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (146, N'mov_bbb_f33b1bd9.mp4', N'mov_bbb_f33b1bd9-mp4', NULL, NULL, NULL, CAST(N'2020-09-17T12:46:56.787' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (147, N'sample-mp4-file.mp4', N'sample-mp4-file-mp4', N'#', NULL, NULL, CAST(N'2020-09-18T11:01:16.370' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (148, N'sample-mp4-file.mp4', N'sample-mp4-file-mp4', N'#', NULL, NULL, CAST(N'2020-09-18T11:01:48.303' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (149, N'sample-mp4-file.mp4', N'sample-mp4-file-mp4', N'#', NULL, NULL, CAST(N'2020-09-18T11:02:39.800' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (150, N'banner2', N'banner2-jpg', N'/uploads/102020/banner2_13bcf4f0.jpg', N'Advertisement', NULL, CAST(N'2020-10-08T15:48:41.977' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (151, N'banner-middle', N'banner-middle-png', N'/uploads/102020/banner-middle_2b0c720a.PNG', N'Advertisement', NULL, CAST(N'2020-10-13T17:32:48.123' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (152, N'Môi trường & Phát triển bền vững số 5 -2 017.mp4', N'moi-truong--phat-trien-ben-vung-so-5-2-017-mp4', N'/uploads/file/102020/Môi trường & Phát triển bền vững số 5 -2 017_95c6c91a.mp4', N'8d870650f411920cty6w6eie8', NULL, CAST(N'2020-10-14T17:21:26.837' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (153, N'sampletest.mp4', N'sampletest-mp4', N'/uploads/file/102020/sampletest_8b60e54c.mp4', N'8d870661d6864693x3z5k58ti', NULL, CAST(N'2020-10-14T17:27:24.300' AS DateTime), N'admin', N'video/mp4')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (154, N'2015.PNG', N'2015-png', N'/uploads/image/102020/2015_d6488a43.PNG', N'8d8768d3c53cc52shqiem1kkv', NULL, CAST(N'2020-10-22T13:20:42.900' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (155, N'Moi truong so 3-2015_full.pdf', N'moi-truong-so-3-2015_full-pdf', N'/uploads/pdf/102020/Moi truong so 3-2015_full_24016b7e.pdf', N'8d8768d3c53cc52shqiem1kkv', NULL, CAST(N'2020-10-22T13:20:43.227' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (156, N'api2 (1).pdf', N'api2-1-pdf', N'/uploads/pdf/102020/api2 (1)_eff29e41.pdf', N'8d876b8dde2fa4cqd5r4r726z', NULL, CAST(N'2020-10-22T18:33:16.543' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (157, N'unnamed.jpg', N'unnamed-jpg', N'/uploads/image/102020/unnamed_cf565846.jpg', N'8d829fa3d04e226j75vdt6h8b', NULL, CAST(N'2020-10-22T23:19:08.560' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (158, N'unnamed.jpg', N'unnamed-jpg', N'/uploads/image/102020/unnamed_d6aef19d.jpg', N'8d829fa1642a517n9bxcfqium', NULL, CAST(N'2020-10-23T00:07:19.647' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (159, N'sample.pdf', N'sample-pdf', N'/uploads/pdf/112020/sample_a88530cd.pdf', N'8d888df9441052832ps1fk41s', NULL, CAST(N'2020-11-14T20:56:04.723' AS DateTime), N'admin', N'application/pdf')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (160, N'vi-vn.jpg', N'vi-vn-jpg', N'/uploads/image/062021/vi-vn_2139c0ce.jpg', NULL, NULL, CAST(N'2021-06-06T15:36:04.987' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (161, N'vi-vn.jpg', N'vi-vn-jpg', N'/uploads/image/062021/vi-vn_4c3c5f22.jpg', NULL, NULL, CAST(N'2021-06-06T15:39:19.107' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (162, N'vi-vn.jpg', N'vi-vn-jpg', N'/uploads/image/062021/vi-vn_56e3bc50.jpg', NULL, NULL, CAST(N'2021-06-06T16:28:57.383' AS DateTime), N'admin', N'image/jpeg')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (163, N'logo-big@2x.png', N'logo-big@2x-png', N'/uploads/image/062021/logo-big@2x_5506c82.png', N'8d92916a5b7c1fbrhycammieq', NULL, CAST(N'2021-06-06T18:12:54.007' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (164, N'logo-big@2x.png', N'logo-big@2x-png', N'/uploads/image/062021/logo-big@2x_5365e9b5.png', N'8d929177f08dbae76u83h7bf3', NULL, CAST(N'2021-06-06T18:19:39.157' AS DateTime), N'admin', N'image/png')
INSERT [dbo].[WebContentUploads] ([ID], [Title], [MetaTitle], [FullPath], [UID], [FolderID], [CreatedDate], [CreatedBy], [MimeType]) VALUES (165, N'no_avatar.jpg', N'no_avatar-jpg', N'/uploads/image/062021/no_avatar_ca1c1f6b.jpg', N'8d9293235b7edfaobgo5kcbk2', NULL, CAST(N'2021-06-06T21:31:03.140' AS DateTime), N'admin', N'image/jpeg')
SET IDENTITY_INSERT [dbo].[WebContentUploads] OFF
GO
SET IDENTITY_INSERT [dbo].[WebModules] ON 

INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (86, N'Tổng Quan', NULL, NULL, NULL, NULL, N'OnePage', N'/admin', NULL, N'tong-quan', NULL, NULL, 1, N'8d891f9225aec5c', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:50:48.223' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-tongquan.png', N'/Content/themes/admin/img/Vector-tongquanactive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (87, N'Quản lý đề xuất', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/ManageRegisterTopic', NULL, N'ke-hoach-chay-xe', NULL, NULL, 2, N'8d891f93f54ba5c', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:52:18.320' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-kehoach.png', N'/Content/themes/admin/img/Vector-kehoachactive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (88, N'Quản lý đề tài', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/ManageTopic', NULL, N'bang-ke', NULL, NULL, 3, N'8d891f94b24a66b', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:52:25.857' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-bangke.png', N'/Content/themes/admin/img/Vector-bangkeActive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (1086, N'Quản lý phân quyền', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/Role', NULL, N'role', NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:58:03.427' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-phanquyen.png', N'/Content/themes/admin/img/Vector-phanquyenActive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (1087, N'Người dùng', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/User', NULL, N'user', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:58:03.427' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-nguoidung.png', N'/Content/themes/admin/img/Vector-nguoidungActive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (1097, N'Quản lý quá trình', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/ManageProgress', NULL, N'quan-ly-vote', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:58:03.427' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-bangke.png', N'/Content/themes/admin/img/Vector-bangkeActive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (1098, N'Quản lý sinh viên', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/Student', NULL, N'quan-ly-sinh-vien', NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:58:03.427' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-nguoidung.png', N'/Content/themes/admin/img/Vector-nguoidungActive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (1099, N'Quản lý khoa', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/Speciality', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:58:03.427' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-phanquyen.png', N'/Content/themes/admin/img/Vector-phanquyenActive.png')
INSERT [dbo].[WebModules] ([ID], [Title], [Description], [Body], [Image], [ParentID], [ContentTypeID], [URL], [SeoTitle], [MetaTitle], [MetaKeywords], [MetaDescription], [Order], [UID], [IndexView], [IndexLayout], [PublishIndexView], [PublishIndexLayout], [PublishDetailView], [PublishDetailLayout], [Status], [SubQuerys], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [ShowOnMenu], [ShowOnAdmin], [Culture], [Icon], [CodeColor], [ActiveArticle], [Target], [Img], [ImgActive]) VALUES (1100, N'Quản lý lớp', NULL, NULL, NULL, NULL, N'OnePage', N'/admin/Class', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2020-11-26T10:58:03.427' AS DateTime), 1, 1, N'vi-VN', NULL, NULL, NULL, N'_self', N'/Content/themes/admin/img/Vector-phanquyen.png', N'/Content/themes/admin/img/Vector-phanquyenActive.png')
SET IDENTITY_INSERT [dbo].[WebModules] OFF
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(N'2013-10-04T10:20:13.493' AS DateTime), NULL, 1, CAST(N'2021-09-13T08:04:15.543' AS DateTime), 0, N'AKoL0Dxp+lHonm0erkFm8DTE5Gq0RJtNKd/YQ1pYo3a8S/ymXoulhoDsHWeX4ZhqwA==', CAST(N'2016-12-10T07:37:17.623' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (10, CAST(N'2020-10-21T17:47:39.703' AS DateTime), NULL, 1, NULL, 0, N'AJrqCJj6GaCH8wwr2Ul4Qk09otPgOVn9K/6WHVw3GwTEqGs74+bFOMy46RRbJO/Jtw==', CAST(N'2020-12-08T07:18:40.003' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (11, CAST(N'2020-10-21T17:48:05.573' AS DateTime), NULL, 1, NULL, 0, N'AAhdnji9TmaepN/ZOd427vtx620UgAu+JnsBSS4JVziHidsr3m7DY7H6VpAJuNKwJg==', CAST(N'2020-10-21T17:48:05.573' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (12, CAST(N'2020-12-08T03:14:23.347' AS DateTime), NULL, 1, NULL, 0, N'AHFM5UmFb2oRmMwqX6UNDb03EUWHbHTQpZDB1vIvxiFvqfN5cgNQ5BYUGlbzAzRsEw==', CAST(N'2021-01-05T09:56:35.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (13, CAST(N'2020-12-08T07:36:24.447' AS DateTime), NULL, 1, NULL, 0, N'ABz4521xdt2kRezrb+8O7G+ePqImsy3MK0djGIz4f8Oh2+wJRtzpwkI8T2i+Vj3bew==', CAST(N'2020-12-08T07:36:24.447' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (14, CAST(N'2020-12-08T10:12:24.800' AS DateTime), NULL, 1, CAST(N'2020-12-08T10:12:30.827' AS DateTime), 0, N'AHUbBndykw6Ss1H9YhjKkBIzPn+nST1t79RNV3n4sJTGgKRyTDGk1we1vcDHXukmgQ==', CAST(N'2021-01-27T06:51:27.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (15, CAST(N'2021-01-07T17:49:25.073' AS DateTime), NULL, 1, CAST(N'2021-01-28T07:44:58.947' AS DateTime), 0, N'AGrny3OMT5cfgrGwQ98f0VJnBmJH7LRbgrwOePKkechIszPf0q6Ze7So0GzOQl7VzQ==', CAST(N'2021-01-28T08:11:45.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1015, CAST(N'2021-02-26T15:09:58.140' AS DateTime), NULL, 1, NULL, 0, N'AHO/s82xzo9GqgHbgP5nb7m7XzWIIsAm/F+200LvhCC4uvpItnu7XQpf774/RUx/4g==', CAST(N'2021-02-26T15:09:58.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1016, CAST(N'2021-04-01T10:06:14.863' AS DateTime), NULL, 1, NULL, 0, N'AP3CIvyyZEp2xIpwSLdZdSdhpgtHhBt1ptAJQtsRb/nAT9vm/CEqGY5fPKJAAuvhOA==', CAST(N'2021-04-01T10:06:14.863' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1017, CAST(N'2021-04-26T03:09:22.473' AS DateTime), NULL, 1, NULL, 0, N'AEndaC6YyLu/FZx8HQ8xYFIVm2r6SqYwRdS4dOQQZHxq89/3pcT4/1BQ0l0X3uoPUA==', CAST(N'2021-04-26T03:09:22.473' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1020, NULL, NULL, 0, NULL, 0, N'admin123', NULL, NULL, NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1021, CAST(N'2021-06-12T11:21:05.643' AS DateTime), NULL, 0, NULL, 0, N'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1022, CAST(N'2021-06-12T11:24:55.793' AS DateTime), NULL, 0, NULL, 0, N'F865B53623B121FD34EE5426C792E5C33AF8C227', NULL, N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1023, CAST(N'2021-06-12T11:43:45.233' AS DateTime), NULL, 0, NULL, 0, N't7w6GwTZ4WXGdisKHN5SJt9bamo=', NULL, N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1024, CAST(N'2021-06-12T11:50:05.037' AS DateTime), NULL, 0, NULL, 0, N'8qVDT0Af3qJoMNXyPuolsGfdFps=', NULL, N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1025, CAST(N'2021-06-12T11:54:37.980' AS DateTime), NULL, 0, NULL, 0, N'AQAAAAEAACcQAAAAEBbnV774qVbW/oLulF2A5EcgMFtoKIlyRZB/Ra5r2ixzYD0+CIRCuPw0FusJwDGWnQ==', NULL, N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1026, CAST(N'2021-09-13T08:19:32.500' AS DateTime), NULL, 1, NULL, 0, N'ADaty6UJ3Yqqd+eIJwPC59K5aBKBtD+GuC9TAyRJrDdqaMH8+mwQ6n+JfClJNkOo3w==', CAST(N'2021-09-13T08:19:32.500' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1027, CAST(N'2021-09-13T08:19:57.810' AS DateTime), NULL, 1, NULL, 0, N'APQx3ri+TvbNodBA7zHErNx5XDK0qjBfldcwsJ+ad9rh1X4mkxOTkxE1lmFPOAho0g==', CAST(N'2021-09-13T08:19:57.810' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1028, CAST(N'2021-09-13T08:20:18.317' AS DateTime), NULL, 1, NULL, 0, N'AOZA6Ff9eUNGQz11or7rttsTg5qcr8ZY9pYUrep/8tXCAXXn0oXt0U20uwaIQrGq8Q==', CAST(N'2021-09-13T08:20:18.317' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1029, CAST(N'2021-09-13T08:20:55.077' AS DateTime), NULL, 1, NULL, 0, N'AGtzx7ft4d4dXPvVN3+H894pOirUxN8FItdIX14LboKr3fYZTODwe4n6xUG9UB1SMg==', CAST(N'2021-09-13T08:20:55.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1030, CAST(N'2021-09-13T08:21:22.487' AS DateTime), NULL, 1, NULL, 0, N'AKExULW1rB/MKn++PhanBTh1mqR8goA1r68VBIRhwqcVnqCt/JAHqCzSG4Ad4Q0jJw==', CAST(N'2021-09-13T08:21:22.487' AS DateTime), N'', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON 

INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName], [Title], [Description]) VALUES (2, N'Administrators', N' Quản trị viên', N' ')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName], [Title], [Description]) VALUES (1011, N'Teacher', N'Giáo viên', NULL)
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1028, 1011)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1027, 1011)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1029, 1011)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1030, 1011)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1026, 1011)
GO
SET IDENTITY_INSERT [dbo].[WebSimpleContents] ON 

INSERT [dbo].[WebSimpleContents] ([ID], [Title], [Image], [Link], [Description], [Key], [Body], [MetaTitle], [MetaKeywords], [MetaDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Culture]) VALUES (1, N'Thông tin trang liên hệ', NULL, NULL, NULL, N'ContactInfo', N'<p><strong>C&ocirc;ng Ty TNHH Thương Mại Dịch Vụ Sản Xuất Việt Linh H&agrave; Nội</strong><br />
Địa chỉ: <strong>Th&ocirc;n Đức Trạch, X&atilde; Quất Động, Huyện Thường T&iacute;n, TP H&agrave; Nội</strong><br />
Điện thoại:<strong> 04. 00000000&nbsp;</strong> - Hotline: <strong>000 000 000&nbsp;</strong><br />
Email: <strong>ctyvietlinh.com</strong>&nbsp;|&nbsp;<strong>vietlinhcty2016@gmail.com</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', NULL, NULL, NULL, N'admin', CAST(N'2013-10-29T22:06:57.330' AS DateTime), N'admin', CAST(N'2016-12-10T22:53:49.827' AS DateTime), N'vi-VN')
INSERT [dbo].[WebSimpleContents] ([ID], [Title], [Image], [Link], [Description], [Key], [Body], [MetaTitle], [MetaKeywords], [MetaDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Culture]) VALUES (12, N'Thông tin liên hệ - footer', NULL, NULL, NULL, N'content-footer', N'<p><strong>TẠP CH&Iacute; M&Ocirc;I TRƯỜNG (VEM) - TỔNG CỤC M&Ocirc;I TRƯỜNG (VEA)</strong></p>

<p><strong>Trụ sở tại H&agrave; Nội: </strong> Tầng 7, L&ocirc; E2, phố Dương Đ&igrave;nh Nghệ, phường Y&ecirc;n H&ograve;a, quận Cầu Giấy, H&agrave; Nội.</p>

<p><strong>Thường tr&uacute; tại TP. Hồ Ch&iacute; Minh: </strong>Ph&ograve;ng A 403, Tầng 4, Khu li&ecirc;n cơ quan Bộ TN&amp;MT, số 200 L&yacute; Ch&iacute;nh Thắng, phường 9, quận 3, TP.Hồ Ch&iacute; Minh</p>

<p><strong>Chịu tr&aacute;ch nhiệm nội dung: </strong> &Ocirc;ng Nguyễn Văn Th&ugrave;y - Phụ tr&aacute;ch điều h&agrave;nh Tạp ch&iacute;</p>

<p><strong>Giấy ph&eacute;p: </strong>Số 59/GP-TTĐT ngày 08 tháng 5 năm 2020 của Cục Quản lý Phát thanh, Truy&ecirc;̀n hình và Th&ocirc;ng tin đi&ecirc;̣n tử - Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng.</p>

<p><strong>Email: </strong> tapchimoitruongtcmt​ vea.gov.vn</p>

<p><strong>Copyright &copy; 2020&nbsp;Tap ch&iacute; M&ocirc;i trường. All rights reserved​</strong></p>
', NULL, NULL, NULL, N'admin', CAST(N'2020-07-12T23:34:44.480' AS DateTime), N'Admin', CAST(N'2020-07-12T18:20:29.807' AS DateTime), N'vi-VN')
INSERT [dbo].[WebSimpleContents] ([ID], [Title], [Image], [Link], [Description], [Key], [Body], [MetaTitle], [MetaKeywords], [MetaDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Culture]) VALUES (13, N'Facebook', NULL, NULL, NULL, N'facebook', N'<p><iframe frameborder="0" height="180" scrolling="no" src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FT%25E1%25BA%25A1p-Ch%25C3%25AD-M%25C3%25B4i-Tr%25C6%25B0%25E1%25BB%259Dng-VEM-121087409693661&amp;tabs=timeline&amp;width=380&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=547555702424687" style="border:none;overflow:hidden" width="300"></iframe></p>
', NULL, NULL, NULL, N'admin', CAST(N'2020-07-27T13:45:07.790' AS DateTime), N'admin', CAST(N'2020-10-09T15:36:22.913' AS DateTime), N'vi-VN')
SET IDENTITY_INSERT [dbo].[WebSimpleContents] OFF
GO
SET IDENTITY_INSERT [dbo].[WebSlides] ON 

INSERT [dbo].[WebSlides] ([ID], [Title], [Description], [Image], [Link], [MetaTitle], [MetaKeywords], [MetaDescription], [Status], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Order], [Culture]) VALUES (9, N'Slide 3', N'Dovitae diam purus luctus facilisis. Nullam at dolore ipsum eros tristique ultrice. Duis quis imperdie.', N'/uploads/image/072020/slide1_aba2df6.png', N'#', NULL, NULL, NULL, 1, N'_self', N'admin', CAST(N'2016-10-14T15:14:20.753' AS DateTime), N'admin', CAST(N'2020-07-12T23:29:13.040' AS DateTime), 3, N'vi-VN')
INSERT [dbo].[WebSlides] ([ID], [Title], [Description], [Image], [Link], [MetaTitle], [MetaKeywords], [MetaDescription], [Status], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Order], [Culture]) VALUES (12, N'Slide 2', N'Dovitae diam purus luctus facilisis. Nullam at dolore ipsum eros tristique ultrice. Duis quis imperdie.', N'/uploads/image/072020/slide2_382074fd.png', N'#', NULL, NULL, NULL, 1, N'_self', N'admin', CAST(N'2016-11-02T12:18:28.567' AS DateTime), N'admin', CAST(N'2020-07-12T23:29:06.697' AS DateTime), 2, N'vi-VN')
INSERT [dbo].[WebSlides] ([ID], [Title], [Description], [Image], [Link], [MetaTitle], [MetaKeywords], [MetaDescription], [Status], [Target], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Order], [Culture]) VALUES (1012, N'Slide 1', N'Dovitae diam purus luctus facilisis. Nullam at dolore ipsum eros tristique ultrice. Duis quis imperdie.', N'/uploads/image/072020/slide3_9f5e998.png', N'#', NULL, NULL, NULL, 1, N'_self', N'admin', CAST(N'2016-11-21T11:01:02.597' AS DateTime), N'admin', CAST(N'2020-07-12T23:28:59.703' AS DateTime), 1, N'vi-VN')
SET IDENTITY_INSERT [dbo].[WebSlides] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__webpages__8A2B61603027F0EA]    Script Date: 14/10/2021 12:21:30 AM ******/
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubscribeNotices] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SubscribeNotices] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  CONSTRAINT [DF__webpages___IsCon__151B244E]  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  CONSTRAINT [DF__webpages___Passw__160F4887]  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[AccessAdminSites]  WITH CHECK ADD  CONSTRAINT [FK_AccessPermissions_AdminSites] FOREIGN KEY([AdminSiteID])
REFERENCES [dbo].[AdminSites] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessAdminSites] CHECK CONSTRAINT [FK_AccessPermissions_AdminSites]
GO
ALTER TABLE [dbo].[AccessAdminSites]  WITH CHECK ADD  CONSTRAINT [FK_AccessPermissions_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessAdminSites] CHECK CONSTRAINT [FK_AccessPermissions_UserProfile]
GO
ALTER TABLE [dbo].[AccessWebModules]  WITH CHECK ADD  CONSTRAINT [FK_AccessWebModules_UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessWebModules] CHECK CONSTRAINT [FK_AccessWebModules_UserProfile]
GO
ALTER TABLE [dbo].[AccessWebModules]  WITH CHECK ADD  CONSTRAINT [FK_AccessWebModules_WebModules] FOREIGN KEY([WebModuleID])
REFERENCES [dbo].[WebModules] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessWebModules] CHECK CONSTRAINT [FK_AccessWebModules_WebModules]
GO
ALTER TABLE [dbo].[AdminSites]  WITH CHECK ADD  CONSTRAINT [FK_AdminSites_AdminSites] FOREIGN KEY([ParentID])
REFERENCES [dbo].[AdminSites] ([ID])
GO
ALTER TABLE [dbo].[AdminSites] CHECK CONSTRAINT [FK_AdminSites_AdminSites]
GO
ALTER TABLE [dbo].[Advertisements]  WITH CHECK ADD  CONSTRAINT [FK_Advertisements_AdvertisementPositions1] FOREIGN KEY([AdvertisementPositionID])
REFERENCES [dbo].[AdvertisementPositions] ([ID])
GO
ALTER TABLE [dbo].[Advertisements] CHECK CONSTRAINT [FK_Advertisements_AdvertisementPositions1]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Classes]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Specialitys] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialitys] ([ID])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Specialitys]
GO
ALTER TABLE [dbo].[ContentImages]  WITH CHECK ADD  CONSTRAINT [FK_ContentImages_WebContents] FOREIGN KEY([WebContentID])
REFERENCES [dbo].[WebContents] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentImages] CHECK CONSTRAINT [FK_ContentImages_WebContents]
GO
ALTER TABLE [dbo].[ContentRelateds]  WITH CHECK ADD  CONSTRAINT [FK_ContentRelateds_WebContents] FOREIGN KEY([MainID])
REFERENCES [dbo].[WebContents] ([ID])
GO
ALTER TABLE [dbo].[ContentRelateds] CHECK CONSTRAINT [FK_ContentRelateds_WebContents]
GO
ALTER TABLE [dbo].[ContentRelateds]  WITH CHECK ADD  CONSTRAINT [FK_ContentRelateds_WebContents1] FOREIGN KEY([RelatedID])
REFERENCES [dbo].[WebContents] ([ID])
GO
ALTER TABLE [dbo].[ContentRelateds] CHECK CONSTRAINT [FK_ContentRelateds_WebContents1]
GO
ALTER TABLE [dbo].[ModuleNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ModuleNavigations_Navigations] FOREIGN KEY([NavigationID])
REFERENCES [dbo].[Navigations] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuleNavigations] CHECK CONSTRAINT [FK_ModuleNavigations_Navigations]
GO
ALTER TABLE [dbo].[ModuleNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ModuleNavigations_WebModules] FOREIGN KEY([WebModuleID])
REFERENCES [dbo].[WebModules] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuleNavigations] CHECK CONSTRAINT [FK_ModuleNavigations_WebModules]
GO
ALTER TABLE [dbo].[RegisterTopics]  WITH CHECK ADD  CONSTRAINT [FK_RegisterTopic_UserProfile] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[RegisterTopics] CHECK CONSTRAINT [FK_RegisterTopic_UserProfile]
GO
ALTER TABLE [dbo].[RegisterTopics]  WITH CHECK ADD  CONSTRAINT [FK_RegisterTopics_Specialitys] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialitys] ([ID])
GO
ALTER TABLE [dbo].[RegisterTopics] CHECK CONSTRAINT [FK_RegisterTopics_Specialitys]
GO
ALTER TABLE [dbo].[Topics]  WITH CHECK ADD  CONSTRAINT [FK_Topics_Specialitys] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialitys] ([ID])
GO
ALTER TABLE [dbo].[Topics] CHECK CONSTRAINT [FK_Topics_Specialitys]
GO
ALTER TABLE [dbo].[Topics]  WITH CHECK ADD  CONSTRAINT [FK_Topics_UserProfile] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[Topics] CHECK CONSTRAINT [FK_Topics_UserProfile]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_Specialitys] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialitys] ([ID])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_Specialitys]
GO
ALTER TABLE [dbo].[WebCategories]  WITH CHECK ADD  CONSTRAINT [FK_WebCategories_WebCategories] FOREIGN KEY([ParentID])
REFERENCES [dbo].[WebCategories] ([ID])
GO
ALTER TABLE [dbo].[WebCategories] CHECK CONSTRAINT [FK_WebCategories_WebCategories]
GO
ALTER TABLE [dbo].[WebContentCategories]  WITH CHECK ADD  CONSTRAINT [FK_WebContentCategories_WebCategories] FOREIGN KEY([WebCategoryID])
REFERENCES [dbo].[WebCategories] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WebContentCategories] CHECK CONSTRAINT [FK_WebContentCategories_WebCategories]
GO
ALTER TABLE [dbo].[WebContentCategories]  WITH CHECK ADD  CONSTRAINT [FK_WebContentCategories_WebContents] FOREIGN KEY([WebContentID])
REFERENCES [dbo].[WebContents] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WebContentCategories] CHECK CONSTRAINT [FK_WebContentCategories_WebContents]
GO
ALTER TABLE [dbo].[WebContents]  WITH CHECK ADD  CONSTRAINT [FK_WebContents_WebModules] FOREIGN KEY([WebModuleID])
REFERENCES [dbo].[WebModules] ([ID])
GO
ALTER TABLE [dbo].[WebContents] CHECK CONSTRAINT [FK_WebContents_WebModules]
GO
ALTER TABLE [dbo].[WebContentUploads]  WITH CHECK ADD  CONSTRAINT [FK_WebContentUploads_WebContentUploads1] FOREIGN KEY([FolderID])
REFERENCES [dbo].[WebContentUploads] ([ID])
GO
ALTER TABLE [dbo].[WebContentUploads] CHECK CONSTRAINT [FK_WebContentUploads_WebContentUploads1]
GO
ALTER TABLE [dbo].[WebModules]  WITH CHECK ADD  CONSTRAINT [FK_WebModules_ContentTypes] FOREIGN KEY([ContentTypeID])
REFERENCES [dbo].[ContentTypes] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WebModules] CHECK CONSTRAINT [FK_WebModules_ContentTypes]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
ALTER TABLE [dbo].[WebRedirects]  WITH CHECK ADD  CONSTRAINT [FK_WebRedirects_WebModules] FOREIGN KEY([WebModuleID])
REFERENCES [dbo].[WebModules] ([ID])
GO
ALTER TABLE [dbo].[WebRedirects] CHECK CONSTRAINT [FK_WebRedirects_WebModules]
GO
