USE [master]
GO
/****** Object:  Database [cine]    Script Date: 25/09/2016 05:28:54 p.m. ******/
CREATE DATABASE [cine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cine', FILENAME = N'C:\Users\Alvaro\cine.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cine_log', FILENAME = N'C:\Users\Alvaro\cine_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cine] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cine] SET ARITHABORT OFF 
GO
ALTER DATABASE [cine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cine] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cine] SET  MULTI_USER 
GO
ALTER DATABASE [cine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cine] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cine] SET DELAYED_DURABILITY = DISABLED 
GO
USE [cine]
GO
/****** Object:  Table [dbo].[BUTACA]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUTACA](
	[id] [numeric](18, 0) NOT NULL,
	[fila] [varchar](50) NULL,
	[asiento] [varchar](50) NULL,
 CONSTRAINT [PK_BUTACA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CARTELERA]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARTELERA](
	[id] [numeric](18, 0) NOT NULL,
	[id_pelicula] [numeric](18, 0) NULL,
	[id_complejo] [numeric](18, 0) NULL,
	[id_sala] [numeric](18, 0) NULL,
	[id_horario] [numeric](18, 0) NULL,
 CONSTRAINT [PK_CARTELERA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMPLEJO]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPLEJO](
	[id] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
 CONSTRAINT [PK_COMPLEJO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FECHA]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FECHA](
	[id] [numeric](18, 0) NOT NULL,
	[fecha_funcion] [date] NULL,
 CONSTRAINT [PK_FECHA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HORARIO]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIO](
	[id] [numeric](18, 0) NOT NULL,
	[hora] [date] NULL,
 CONSTRAINT [PK_HORARIO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PELICULA]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULA](
	[id] [numeric](18, 0) NOT NULL,
	[titulo] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[fecha_estreno] [date] NULL,
 CONSTRAINT [PK_PELICULA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALA]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALA](
	[id] [numeric](18, 0) NOT NULL,
	[numero] [numeric](18, 0) NULL,
	[tipo] [varchar](50) NULL,
 CONSTRAINT [PK_SALA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[user] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[CARTELERA_V]    Script Date: 25/09/2016 05:28:55 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CARTELERA_V]
AS
SELECT        dbo.PELICULA.titulo, dbo.PELICULA.descripcion, dbo.COMPLEJO.nombre, dbo.COMPLEJO.direccion, dbo.SALA.numero, dbo.SALA.tipo, dbo.HORARIO.hora
FROM            dbo.CARTELERA INNER JOIN
                         dbo.PELICULA ON dbo.CARTELERA.id_pelicula = dbo.PELICULA.id INNER JOIN
                         dbo.COMPLEJO ON dbo.CARTELERA.id_complejo = dbo.COMPLEJO.id INNER JOIN
                         dbo.SALA ON dbo.CARTELERA.id_sala = dbo.SALA.id INNER JOIN
                         dbo.HORARIO ON dbo.CARTELERA.id_horario = dbo.HORARIO.id

GO
ALTER TABLE [dbo].[CARTELERA]  WITH CHECK ADD  CONSTRAINT [FK_CARTELERA_COMPLEJO] FOREIGN KEY([id_complejo])
REFERENCES [dbo].[COMPLEJO] ([id])
GO
ALTER TABLE [dbo].[CARTELERA] CHECK CONSTRAINT [FK_CARTELERA_COMPLEJO]
GO
ALTER TABLE [dbo].[CARTELERA]  WITH CHECK ADD  CONSTRAINT [FK_CARTELERA_HORARIO] FOREIGN KEY([id_horario])
REFERENCES [dbo].[HORARIO] ([id])
GO
ALTER TABLE [dbo].[CARTELERA] CHECK CONSTRAINT [FK_CARTELERA_HORARIO]
GO
ALTER TABLE [dbo].[CARTELERA]  WITH CHECK ADD  CONSTRAINT [FK_CARTELERA_PELICULA] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULA] ([id])
GO
ALTER TABLE [dbo].[CARTELERA] CHECK CONSTRAINT [FK_CARTELERA_PELICULA]
GO
ALTER TABLE [dbo].[CARTELERA]  WITH CHECK ADD  CONSTRAINT [FK_CARTELERA_SALA] FOREIGN KEY([id_sala])
REFERENCES [dbo].[SALA] ([id])
GO
ALTER TABLE [dbo].[CARTELERA] CHECK CONSTRAINT [FK_CARTELERA_SALA]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[23] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CARTELERA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 166
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PELICULA"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 135
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "COMPLEJO"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 118
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SALA"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 118
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HORARIO"
            Begin Extent = 
               Top = 6
               Left = 870
               Bottom = 101
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Ta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CARTELERA_V'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ble = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CARTELERA_V'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CARTELERA_V'
GO
USE [master]
GO
ALTER DATABASE [cine] SET  READ_WRITE 
GO
