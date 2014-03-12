create or replace type nf26pxxx.f_bdt_catalogue_type as object (
    isbn varchar(13),
    titre varchar(255),
    auteur varchar(50),
    langue char(3),
    parution char(4),
    editeur varchar(50),
    genre varchar(50),
    member function getIsbn return varchar,
    member function getTitre return varchar,
    member function getAuteur return varchar,
    member function getLangue return char,
    member function getParution return char,
    member function getEditeur return varchar,
    member function getGenre return varchar
)

drop table nf26pxxx.f_bdt_catalogue;
create table nf26pxxx.f_bdt_catalogue of nf26pxxx.f_bdt_catalogue_type;

drop index f_bdt_catalogue_isbn_idx;
create unique index f_bdt_catalogue_isbn_idx on nf26pxxx.f_bdt_catalogue(isbn);

alter table nf26pxxx.f_bdt_catalogue drop constraint f_bdt_catalogue_pk_isbn;
alter table nf26pxxx.f_bdt_catalogue add constraint f_bdt_catalogue_pk_isbn
    primary key (isbn);
