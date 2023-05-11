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

insert into CAPITULO(CAPDESCRICAO,LIVID) values ('O livro começa com Fabiano e sua família se arrastando pela caatinga seca.',1);
go


Create table CARDTEXTO(
  CARID int identity(1,1) not null primary key,
  CARTEXTO varchar(max) not null,  
) 

select  CARTEXTO from CARDTEXTO where CARID=1 ;
select * from CARDTEXTO;
insert into CARDTEXTO(CARTEXTO, CAPID) values ('Na planície avermelhada os juazeiros alargavam duas manchas verdes. Os
infelizes tinham caminhado o dia inteiro, estavam cansados e famintos.
Ordinariamente andavam pouco, mas como haviam repousado bastante na areia do
rio seco, a viagem progredira bem três léguas. Fazia horas que procuravam uma
sombra. A folhagem dos juazeiros apareceu longe, através dos galhos pelados da
catinga rala.
Arrastaram-se para lá, devagar, Sinha Vitória com o filho mais novo
escanchado no quarto e o baú de folha na cabeça, Fabiano sombrio, cambaio, o aió a
tiracolo, a cuia pendurada numa correia presa ao cinturão, a espingarda de
pederneira no ombro. O menino mais velho e a cachorra Baleia iam atrás.
Os juazeiros aproximaram-se, recuaram, sumiram-se. O menino mais velho
pôs-se a chorar, sentou-se no chão.',1);



 insert into CARDTEXTO (CARTEXTO, CAPID) values ('– Anda, condenado do diabo, gritou-lhe o pai.
Não obtendo resultado, fustigou-o com a bainha da faca de ponta. Mas o
pequeno esperneou acuado, depois sossegou, deitou-se, fechou os olhos. Fabiano
ainda lhe deu algumas pancadas e esperou que ele se levantasse. Como isto não
acontecesse, espiou os quatro cantos, zangado, praguejando baixo.
A catinga estendia-se, de um vermelho indeciso salpicado de manchas brancas
que eram ossadas. O vôo negro dos urubus fazia círculos altos em redor de bichos
moribundos.
– Anda, excomungado.
O pirralho não se mexeu, e Fabiano desejou matá-lo. Tinha o coração grosso,
queria responsabilizar alguém pela sua desgraça. A seca aparecia-lhe como um fato
necessário – e a obstinação da criança irritava-o. Certamente esse obstáculo miúdo
não era culpado, mas dificultava a marcha, e o vaqueiro precisava chegar, não sabia
onde. Tinham deixado os caminhos, cheios de espinho e seixos, fazia horas que
pisavam a margem do rio, a lama seca e rachada que escaldava os pés.',1);

 insert into CARDTEXTO (CARTEXTO, CAPID) values ('Pelo espírito atribulado do sertanejo passou a idéia de abandonar o filho
naquele descampado. Pensou nos urubus, nas ossadas, coçou a barba ruiva e suja,
irresoluto, examinou os arredores. Sinha Vitória estirou o beiço indicando vagamente
uma direção e afirmou com alguns sons guturais que estavam perto. Fabiano meteu a
faca na bainha, guardou-a no cinturão, acocorou-se, pegou no pulso do menino, que
se encolhia, os joelhos encostados no estômago, frio como um defunto. Aí a cólera
desapareceu e Fabiano teve pena. Impossível abandonar o anjinho aos bichos do
mato. Entregou a espingarda a Sinha Vitória, pôs o filho no cangote, levantou-se,
agarrou os bracinhos que lhe caíam sobre o peito, moles, finos como cambitos. Sinha
Vitória aprovou esse arranjo, lançou de novo a interjeição gutural, designou os
juazeiros invisíveis.',1)

insert into CARDTEXTO (CARTEXTO, CAPID) values ('E a viagem prosseguiu, mais lenta, mais arrastada, num silêncio grande.
Ausente do companheiro, a cachorra Baleia tomou a frente do grupo.
Arqueada, as costelas à mostra, corria ofegando, a língua fora da boca. E de quando
em quando se detinha, esperando as pessoas, que se retardavam.
Ainda na véspera eram seis viventes, contando com o papagaio. Coitado,
morrera na areia do rio, onde haviam descansado, a beira de uma poça: a fome
apertara demais os retirantes e por ali não existia sinal de comida. Baleia jantara os
pés, a cabeça, os ossos do amigo, e não guardava lembrança disto. Agora, enquanto
parava, dirigia as pupilas brilhantes aos objetos familiares, estranhava não ver sobre
o baú de folha a gaiola pequena onde a ave se equilibrava mal. Fabiano também às
vezes sentia falta dela, mas logo a recordação chegava. Tinha andado a procurar
raízes, à toa: o resto da farinha acabara, não se ouvia um berro de rês perdida na
catinga. Sinha Vitória, queimando o assento no chão, as mãos cruzadas segurando os
joelhos ossudos, pensava em acontecimentos antigos que não se relacionavam: festas
de casamento, vaquejadas, novenas, tudo numa confusão. Despertara-a um grito

áspero, vira de perto a realidade e o papagaio, que andava furioso, com os pés
apalhetados, numa atitude ridícula. Resolvera de supetão aproveitá-lo como
alimento e justificara-se declarando a si mesma que ele era mudo e inútil. Não podia
deixar de ser mudo.. Ordinariamente a família falava pouco. E depois daquele
desastre viviam todos calados, raramente soltavam palavras curtas. O louro aboiava,
tangendo um gado inexistente, e latia arremedando a cachorra.
As manchas dos juazeiros tornaram a aparecer, Fabiano aligeirou o passo,
esqueceu a fome, a canseira e os ferimentos. As alpercatas dele estavam gastas nos
saltos, e a embira tinha-lhe aberto entre os dedos rachaduras muito dolorosas. Os
calcanhares, duros como cascos, gretavam-se e sangravam.',1)

insert into CARDTEXTO (CARTEXTO, CAPID) values ('Num cotovelo do caminho avistou um canto de cerca, encheu-o a esperança de
achar comida, sentiu desejo de cantar. A voz saiu-lhe rouca, medonha. Calou-se para
não estragar força.
Deixaram a margem do rio, acompanharam a cerca, subiram uma ladeira,
chegaram aos juazeiros. Fazia tempo que não viam sombra.
Sinha Vitória acomodou os filhos, que arriaram como trouxas, cobriu-os com
molambos. O menino mais velho, passada a vertigem que o derrubara, encolhido
sobre folhas secas, a cabeça encostada a uma raiz, adormecia, acordava. E quando
abria os olhos, distinguia vagamente um monte próximo, algumas pedras, um carro
de bois. A cachorra Baleia foi enroscar-se junto dele.
Estavam no pátio de uma fazenda sem vida O curral deserto, o chiqueiro das
cabras arruinado e também deserto, a casa do vaqueiro fechada, tudo anunciava
abandono. Certamente o gado se finara e os moradores tinham fugido. Fabiano
procurou em vão perceber um toque de chocalho. Avizinhou-se da casa, bateu,
tentou forçar a porta. Encontrando resistência, penetrou num cercadinho cheio de
plantas mortas, rodeou a tapera, alcançou o terreiro do fundo, viu um barreiro vazio,
um bosque de catingueiras murchas, um pé de turco e o prolongamento da cerca do
curral. Trepou-se no mourão do canto, examinou a catinga, onde avultavam as
ossadas e o negrume dos urubus. Desceu, empurrou a porta da cozinha. Voltou
desanimado, ficou um instante no copiar, fazendo tenção de hospedar ali a família.

Mas chegando aos juazeiros, encontrou os meninos adormecidos e não quis acordá-
los. Foi apanhar gravetos, trouxe do chiqueiro das cabras uma braçada de madeira

meio roída pelo cupim, arrancou touceiras de macambira, arrumou tudo para a
fogueira.
Nesse ponto Baleia arrebitou as orelhas, arregaçou as ventas, sentiu cheiro de
preás, farejou um minuto, localizou-os no morro próximo e saiu correndo.',1);




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