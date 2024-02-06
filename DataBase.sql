create table pais (id_pais number primary key, 
                    nome varchar2(30));

create table estado (id_estado number primary key,
                      nome varchar2(30),
                      id_pais number);
                      
alter table estado add constraint fk_estado foreign key (id_pais) references pais(id_pais);

create table cidade (id_cidade number primary key,
                      nome varchar2(30),
                      id_pais number,
                      id_estado number);
                        
alter table cidade add constraint fk_cidade foreign key (id_pais) references pais(id_pais);
alter table cidade add constraint fk_cidade_est foreign key (id_estado) references estado(id_estado);

create table bairro (id_bairro number primary key,
                      nome varchar2(30),
                      id_pais number,
                      id_estado number,
                      id_cidade number);
                      
alter table bairro add constraint fk_bairro foreign key (id_pais) references pais(id_pais);
alter table bairro add constraint fk_bairro_est foreign key (id_estado) references estado(id_estado);
alter table bairro add constraint fk_bairro_cid foreign key (id_cidade) references cidade(id_cidade);

create table endereco_cliente (id_endereco_cliente number primary key,
                      nome varchar2(30),
                      id_pais number,
                      id_estado number,
                      id_cidade number,
                      id_bairro number);
                      
alter table endereco_cliente add constraint fk_endereco_cliente foreign key (id_pais) references pais(id_pais);
alter table endereco_cliente add constraint fk_endereco_cliente_est foreign key (id_estado) references estado(id_estado);
alter table endereco_cliente add constraint fk_endereco_cliente_cid foreign key (id_cidade) references cidade(id_cidade);
alter table endereco_cliente add constraint fk_endereco_cliente_bai foreign key (id_bairro) references bairro(id_bairro);

INSERT INTO pais (id_pais, nome) VALUES (1, 'Brasil');
INSERT INTO pais (id_pais, nome) VALUES (2, 'Estados Unidos');
INSERT INTO pais (id_pais, nome) VALUES (3, 'França');
INSERT INTO pais (id_pais, nome) VALUES (4, 'Japão');
INSERT INTO pais (id_pais, nome) VALUES (5, 'Alemanha');

INSERT INTO estado (id_estado, nome, id_pais) VALUES (1, 'São Paulo', 1);
INSERT INTO estado (id_estado, nome, id_pais) VALUES (2, 'California', 2);
INSERT INTO estado (id_estado, nome, id_pais) VALUES (3, 'Île-de-France', 3);
INSERT INTO estado (id_estado, nome, id_pais) VALUES (4, 'Tóquio', 4);
INSERT INTO estado (id_estado, nome, id_pais) VALUES (5, 'Berlim', 5);

INSERT INTO cidade (id_cidade, nome, id_pais, id_estado) VALUES (1, 'São Paulo', 1, 1);
INSERT INTO cidade (id_cidade, nome, id_pais, id_estado) VALUES (2, 'Los Angeles', 2, 2);
INSERT INTO cidade (id_cidade, nome, id_pais, id_estado) VALUES (3, 'Paris', 3, 3);
INSERT INTO cidade (id_cidade, nome, id_pais, id_estado) VALUES (4, 'Tóquio', 4, 4);
INSERT INTO cidade (id_cidade, nome, id_pais, id_estado) VALUES (5, 'Berlim', 5, 5);

INSERT INTO bairro (id_bairro, nome, id_pais, id_estado, id_cidade) VALUES (1, 'Jardins', 1, 1, 1);
INSERT INTO bairro (id_bairro, nome, id_pais, id_estado, id_cidade) VALUES (2, 'Hollywood', 2, 2, 2);
INSERT INTO bairro (id_bairro, nome, id_pais, id_estado, id_cidade) VALUES (3, 'Montmartre', 3, 3, 3);
INSERT INTO bairro (id_bairro, nome, id_pais, id_estado, id_cidade) VALUES (4, 'Shinjuku', 4, 4, 4);
INSERT INTO bairro (id_bairro, nome, id_pais, id_estado, id_cidade) VALUES (5, 'Mitte', 5, 5, 5);

INSERT INTO endereco_cliente (id_endereco_cliente, nome, id_pais, id_estado, id_cidade, id_bairro) VALUES (1, 'Av. Paulista, 123', 1, 1, 1, 1);
INSERT INTO endereco_cliente (id_endereco_cliente, nome, id_pais, id_estado, id_cidade, id_bairro) VALUES (2, 'Sunset Blvd, 456', 2, 2, 2, 2);
INSERT INTO endereco_cliente (id_endereco_cliente, nome, id_pais, id_estado, id_cidade, id_bairro) VALUES (3, 'Rue de Rivoli, 789', 3, 3, 3, 3);
INSERT INTO endereco_cliente (id_endereco_cliente, nome, id_pais, id_estado, id_cidade, id_bairro) VALUES (4, 'Shibuya, 101', 4, 4, 4, 4);
INSERT INTO endereco_cliente (id_endereco_cliente, nome, id_pais, id_estado, id_cidade, id_bairro) VALUES (5, 'Friedrichstraße, 202', 5, 5, 5, 5);
