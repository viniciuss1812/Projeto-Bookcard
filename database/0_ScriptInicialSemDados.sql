use master
go
Create database BDBookCard
go
use  BDBookCard
go
Create table LIVRO(
  LIVID int identity(1,1) not null primary key,
  LIVNOME varchar(100)
);
select * from LIVRO;
insert into LIVRO(LIVNOME, LIVAUTOR) values ('Vidas Secas','Graciliano Ramos');

go
Create table CAPITULO(
  CAPID int identity(1,1) not null primary key,
  CAPDESCRICAO varchar(100) not null,
  LIVID int not null FOREIGN KEY REFERENCES LIVRO(LIVID)
)

select * from CAPITULO;

insert into CAPITULO(CAPDESCRICAO,LIVID) values ('O livro come�a com Fabiano e sua fam�lia se arrastando pela caatinga seca.',1);
go


Create table CARDTEXTO(
  CARID int identity(1,1) not null primary key,
  CARTEXTO varchar(max) not null,  
) 

select  CARTEXTO from CARDTEXTO where CARID=1 ;
select * from CARDTEXTO;
insert into CARDTEXTO(CARTEXTO, CAPID) values ('Na plan�cie avermelhada os juazeiros alargavam duas manchas verdes. Os
infelizes tinham caminhado o dia inteiro, estavam cansados e famintos.
Ordinariamente andavam pouco, mas como haviam repousado bastante na areia do
rio seco, a viagem progredira bem tr�s l�guas. Fazia horas que procuravam uma
sombra. A folhagem dos juazeiros apareceu longe, atrav�s dos galhos pelados da
catinga rala.
Arrastaram-se para l�, devagar, Sinha Vit�ria com o filho mais novo
escanchado no quarto e o ba� de folha na cabe�a, Fabiano sombrio, cambaio, o ai� a
tiracolo, a cuia pendurada numa correia presa ao cintur�o, a espingarda de
pederneira no ombro. O menino mais velho e a cachorra Baleia iam atr�s.
Os juazeiros aproximaram-se, recuaram, sumiram-se. O menino mais velho
p�s-se a chorar, sentou-se no ch�o.',1);



 insert into CARDTEXTO (CARTEXTO, CAPID) values ('� Anda, condenado do diabo, gritou-lhe o pai.
N�o obtendo resultado, fustigou-o com a bainha da faca de ponta. Mas o
pequeno esperneou acuado, depois sossegou, deitou-se, fechou os olhos. Fabiano
ainda lhe deu algumas pancadas e esperou que ele se levantasse. Como isto n�o
acontecesse, espiou os quatro cantos, zangado, praguejando baixo.
A catinga estendia-se, de um vermelho indeciso salpicado de manchas brancas
que eram ossadas. O v�o negro dos urubus fazia c�rculos altos em redor de bichos
moribundos.
� Anda, excomungado.
O pirralho n�o se mexeu, e Fabiano desejou mat�-lo. Tinha o cora��o grosso,
queria responsabilizar algu�m pela sua desgra�a. A seca aparecia-lhe como um fato
necess�rio � e a obstina��o da crian�a irritava-o. Certamente esse obst�culo mi�do
n�o era culpado, mas dificultava a marcha, e o vaqueiro precisava chegar, n�o sabia
onde. Tinham deixado os caminhos, cheios de espinho e seixos, fazia horas que
pisavam a margem do rio, a lama seca e rachada que escaldava os p�s.',1);

 insert into CARDTEXTO (CARTEXTO, CAPID) values ('Pelo esp�rito atribulado do sertanejo passou a id�ia de abandonar o filho
naquele descampado. Pensou nos urubus, nas ossadas, co�ou a barba ruiva e suja,
irresoluto, examinou os arredores. Sinha Vit�ria estirou o bei�o indicando vagamente
uma dire��o e afirmou com alguns sons guturais que estavam perto. Fabiano meteu a
faca na bainha, guardou-a no cintur�o, acocorou-se, pegou no pulso do menino, que
se encolhia, os joelhos encostados no est�mago, frio como um defunto. A� a c�lera
desapareceu e Fabiano teve pena. Imposs�vel abandonar o anjinho aos bichos do
mato. Entregou a espingarda a Sinha Vit�ria, p�s o filho no cangote, levantou-se,
agarrou os bracinhos que lhe ca�am sobre o peito, moles, finos como cambitos. Sinha
Vit�ria aprovou esse arranjo, lan�ou de novo a interjei��o gutural, designou os
juazeiros invis�veis.',1)

insert into CARDTEXTO (CARTEXTO, CAPID) values ('E a viagem prosseguiu, mais lenta, mais arrastada, num sil�ncio grande.
Ausente do companheiro, a cachorra Baleia tomou a frente do grupo.
Arqueada, as costelas � mostra, corria ofegando, a l�ngua fora da boca. E de quando
em quando se detinha, esperando as pessoas, que se retardavam.
Ainda na v�spera eram seis viventes, contando com o papagaio. Coitado,
morrera na areia do rio, onde haviam descansado, a beira de uma po�a: a fome
apertara demais os retirantes e por ali n�o existia sinal de comida. Baleia jantara os
p�s, a cabe�a, os ossos do amigo, e n�o guardava lembran�a disto. Agora, enquanto
parava, dirigia as pupilas brilhantes aos objetos familiares, estranhava n�o ver sobre
o ba� de folha a gaiola pequena onde a ave se equilibrava mal. Fabiano tamb�m �s
vezes sentia falta dela, mas logo a recorda��o chegava. Tinha andado a procurar
ra�zes, � toa: o resto da farinha acabara, n�o se ouvia um berro de r�s perdida na
catinga. Sinha Vit�ria, queimando o assento no ch�o, as m�os cruzadas segurando os
joelhos ossudos, pensava em acontecimentos antigos que n�o se relacionavam: festas
de casamento, vaquejadas, novenas, tudo numa confus�o. Despertara-a um grito

�spero, vira de perto a realidade e o papagaio, que andava furioso, com os p�s
apalhetados, numa atitude rid�cula. Resolvera de supet�o aproveit�-lo como
alimento e justificara-se declarando a si mesma que ele era mudo e in�til. N�o podia
deixar de ser mudo.. Ordinariamente a fam�lia falava pouco. E depois daquele
desastre viviam todos calados, raramente soltavam palavras curtas. O louro aboiava,
tangendo um gado inexistente, e latia arremedando a cachorra.
As manchas dos juazeiros tornaram a aparecer, Fabiano aligeirou o passo,
esqueceu a fome, a canseira e os ferimentos. As alpercatas dele estavam gastas nos
saltos, e a embira tinha-lhe aberto entre os dedos rachaduras muito dolorosas. Os
calcanhares, duros como cascos, gretavam-se e sangravam.',1)

insert into CARDTEXTO (CARTEXTO, CAPID) values ('Num cotovelo do caminho avistou um canto de cerca, encheu-o a esperan�a de
achar comida, sentiu desejo de cantar. A voz saiu-lhe rouca, medonha. Calou-se para
n�o estragar for�a.
Deixaram a margem do rio, acompanharam a cerca, subiram uma ladeira,
chegaram aos juazeiros. Fazia tempo que n�o viam sombra.
Sinha Vit�ria acomodou os filhos, que arriaram como trouxas, cobriu-os com
molambos. O menino mais velho, passada a vertigem que o derrubara, encolhido
sobre folhas secas, a cabe�a encostada a uma raiz, adormecia, acordava. E quando
abria os olhos, distinguia vagamente um monte pr�ximo, algumas pedras, um carro
de bois. A cachorra Baleia foi enroscar-se junto dele.
Estavam no p�tio de uma fazenda sem vida O curral deserto, o chiqueiro das
cabras arruinado e tamb�m deserto, a casa do vaqueiro fechada, tudo anunciava
abandono. Certamente o gado se finara e os moradores tinham fugido. Fabiano
procurou em v�o perceber um toque de chocalho. Avizinhou-se da casa, bateu,
tentou for�ar a porta. Encontrando resist�ncia, penetrou num cercadinho cheio de
plantas mortas, rodeou a tapera, alcan�ou o terreiro do fundo, viu um barreiro vazio,
um bosque de catingueiras murchas, um p� de turco e o prolongamento da cerca do
curral. Trepou-se no mour�o do canto, examinou a catinga, onde avultavam as
ossadas e o negrume dos urubus. Desceu, empurrou a porta da cozinha. Voltou
desanimado, ficou um instante no copiar, fazendo ten��o de hospedar ali a fam�lia.

Mas chegando aos juazeiros, encontrou os meninos adormecidos e n�o quis acord�-
los. Foi apanhar gravetos, trouxe do chiqueiro das cabras uma bra�ada de madeira

meio ro�da pelo cupim, arrancou touceiras de macambira, arrumou tudo para a
fogueira.
Nesse ponto Baleia arrebitou as orelhas, arrega�ou as ventas, sentiu cheiro de
pre�s, farejou um minuto, localizou-os no morro pr�ximo e saiu correndo.',1);




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
--select * from CARDTEXTO;
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




select top 1 * from CARDTEXTO