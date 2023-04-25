use master
go
drop database   BDBookCard
go
Create database BDBookCard
go
use  BDBookCard
go
Create table LIVRO(
  LIVID int identity(1,1) not null primary key,
  LIVNOME varchar(100)
)
go
Create table CAPITULO(
  CAPID int identity(1,1) not null primary key,
  CAPDESCRICAO varchar(100) not null,
  LIVID int not null FOREIGN KEY REFERENCES LIVRO(LIVID)
)
go
Create table LISTACARD(
  LISID int identity(1,1) not null primary key,
  LISNOME varchar(100) not null,
  LISOVERVIEW varchar(max) null,
)
go
Create table CARDTEXTO(
  CARID int identity(1,1) not null primary key,
  CARTEXTO varchar(max) not null,  
) 
Create table CLASSIFICACAOPALAVRA (
   CLAID int identity(1,1) not null primary key,
   CLADESCRICAO  varchar(100) not null,
)
go
Create table PALAVRA (
   PALID INT  identity(1,1) not null primary key,
   PALPALAVRA varchar(100) not null,
   PALRELEVANTE int not null default 0
)
Create table PALAVRACARD (
   PACID int identity(1,1) not null primary key,
   PALID int not null FOREIGN KEY REFERENCES PALAVRA(PALID),
   CARID int not null FOREIGN KEY REFERENCES CARDTEXTO(CARID),
   CLAID int null FOREIGN KEY REFERENCES CLASSIFICACAOPALAVRA(CLAID),
)

go 
ALTER TABLE LIVRO
add  LIVAUTOR VARCHAR(100) null