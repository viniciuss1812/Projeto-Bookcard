use BDBookCard
go
Insert Livro (LIVNOME, LIVAUTOR) values ('Dom Casmurro', 'Machado de Assis')
Insert Livro (LIVNOME, LIVAUTOR) values ('Vidas Secas', 'Glaciliano Ramos')
--select * from Livro
go
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Mudança',2)	
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Fabiano',2)	
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Cadeia',2)	
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Sinha Vitória',2)	
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('O menino mais novo',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('O menino mais velho',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Inverno',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Festa',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Baleia',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Contas',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('O soldado amarelo',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('O mundo coberto de penas',2)
Insert CAPITULO (CAPDESCRICAO, LIVID) values ('Fuga',2)
--select * from capitulo
go
insert LISTACARD (LISNOME,LISOVERVIEW,CAPID) values ('Infelicidade',null, 1)
insert LISTACARD (LISNOME,LISOVERVIEW,CAPID) values ('Desgraça',null, 1)
--select * from LISTACARD
Insert CARDTEXTO (CARTEXTO,LISID) values (
    'Na planície avermelhada os juazeiros alargavam duas manchas verdes.
	  Os infelizes tinham caminhado o dia inteiro, estavam cansados e 
	  famintos. Ordinariamente andavam pouco, mas como haviam repousado 
	  bastante na areia do rio seco, a viagem progredira bem três léguas.
	  Fazia horas que procuravam uma sombra. A folhagem dos juazeiros apareceu 
	  longe, através dos galhos pelados da catinga rala',
	1)
--select * from CARDTEXTO





