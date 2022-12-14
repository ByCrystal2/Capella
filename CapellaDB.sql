create database CapellaDB
USE [CapellaDB]
GO
/****** Object:  Table [dbo].[Film]    Script Date: 31.10.2022 10:43:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[FilmID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[sure] [float] NULL,
	[konu] [text] NULL,
	[puan] [float] NULL,
	[oyuncu] [nvarchar](50) NULL,
	[filmTurId] [int] NULL,
	[afis] [text] NULL,
	[cikisTarihi] [smallint] NULL,
	[aciklama] [text] NULL,
	[filmDosyaYolu] [text] NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[FilmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmTur]    Script Date: 31.10.2022 10:43:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmTur](
	[filmTurID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_FilmTur] PRIMARY KEY CLUSTERED 
(
	[filmTurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FilmTur] ON 

INSERT [dbo].[FilmTur] ([filmTurID], [ad]) VALUES (1, N'Film')
INSERT [dbo].[FilmTur] ([filmTurID], [ad]) VALUES (2, N'Dizi')
INSERT [dbo].[FilmTur] ([filmTurID], [ad]) VALUES (3, N'Anime')
SET IDENTITY_INSERT [dbo].[FilmTur] OFF
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_FilmTur] FOREIGN KEY([filmTurId])
REFERENCES [dbo].[FilmTur] ([filmTurID])
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_FilmTur]
GO
