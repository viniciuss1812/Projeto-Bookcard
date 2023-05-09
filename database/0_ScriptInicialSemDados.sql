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
go

ALTER TABLE CARDTEXTO
add  CAPID INT NOT NULL
GO
ALTER TABLE CARDTEXTO
ADD FOREIGN KEY (CAPID) REFERENCES CAPITULO(CAPID)
GO
CREATE TABLE PALAVRADESTAQUE (
 PADID  int identity(1,1) not null primary key,
 PADPALAVRA varchar(100) not null,
 PADPRIORIDADE int default 1 ,
 CARDID INT FOREIGN KEY REFERENCES CARDTEXTO(CARID),
 CONSTRAINT CHK_PrioridadePalavra CHECK (	PADPRIORIDADE=1 
										 or PADPRIORIDADE=5
										 or PADPRIORIDADE=8
										 or PADPRIORIDADE=13)
)