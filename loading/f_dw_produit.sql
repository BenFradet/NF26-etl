drop table nf26pxxx.f_dw_produit;
create table nf26pxxx.f_dw_produit (
    isbn varchar(13),
    titre varchar(255),
    langue char(3),
    genre varchar(20),
    auteur varchar(50),
    editeur varchar(50),
    parution char(4)
);

drop index f_dw_produit_idx_isbn;
create unique index f_dw_produit_idx_isbn on nf26pxxx.f_dw_produit(isbn);

alter table nf26pxxx.f_dw_produit drop constraint f_dw_produit_pk_isbn;
alter table nf26pxxx.f_dw_produit add constraint f_dw_produit_pk_isbn
    primary key(isbn);
