create database paginN;
use paginN;

create table tbl_Beneficiario(
IdBeneficiario int primary key not null,
Nombre varchar(50),
edad int,
direccion varchar(100),
dui varchar(10)
);

select * from tbl_Beneficiario;