
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/01/2017 20:29:08
-- Generated from EDMX file: C:\Users\victo\Desktop\c#\LocadoraVeiculos\LocadoraVeiculos\Models\LocadoraDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LocadoraDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TipoVeiculoCarro]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarroSet] DROP CONSTRAINT [FK_TipoVeiculoCarro];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CarroSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarroSet];
GO
IF OBJECT_ID(N'[dbo].[TipoVeiculoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoVeiculoSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CarroSet'
CREATE TABLE [dbo].[CarroSet] (
    [carroId] int IDENTITY(1,1) NOT NULL,
    [nome] nvarchar(50)  NOT NULL,
    [cor] nvarchar(50)  NOT NULL,
    [ano] int  NOT NULL,
    [TipoVeiculo_tipoVeiculoId] int  NOT NULL
);
GO

-- Creating table 'TipoVeiculoSet'
CREATE TABLE [dbo].[TipoVeiculoSet] (
    [tipoVeiculoId] int IDENTITY(1,1) NOT NULL,
    [Descricao] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [carroId] in table 'CarroSet'
ALTER TABLE [dbo].[CarroSet]
ADD CONSTRAINT [PK_CarroSet]
    PRIMARY KEY CLUSTERED ([carroId] ASC);
GO

-- Creating primary key on [tipoVeiculoId] in table 'TipoVeiculoSet'
ALTER TABLE [dbo].[TipoVeiculoSet]
ADD CONSTRAINT [PK_TipoVeiculoSet]
    PRIMARY KEY CLUSTERED ([tipoVeiculoId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TipoVeiculo_tipoVeiculoId] in table 'CarroSet'
ALTER TABLE [dbo].[CarroSet]
ADD CONSTRAINT [FK_TipoVeiculoCarro]
    FOREIGN KEY ([TipoVeiculo_tipoVeiculoId])
    REFERENCES [dbo].[TipoVeiculoSet]
        ([tipoVeiculoId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoVeiculoCarro'
CREATE INDEX [IX_FK_TipoVeiculoCarro]
ON [dbo].[CarroSet]
    ([TipoVeiculo_tipoVeiculoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------