-- TABLE
CREATE TABLE cidade (
  cod_cidade integer not NULL primary key, 
  cidade varchar(20), 
  uf varchar(2)
);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE depe (
  prefixo integer not NULL primary key,
  nome varchar(20), 
  cod_cidade integer
);
CREATE TABLE funci (
  matricula varchar(8) primary key, 
  nome varchar(60), 
  prefixo integer
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
