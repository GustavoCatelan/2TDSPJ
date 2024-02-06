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
