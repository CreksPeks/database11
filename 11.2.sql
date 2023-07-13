drop database if exists new2;
create database if not exists new2;
use new2;

create table if not exists `Почтовые отделения` (
Адрес varchar(100) primary key,
`Часы работы` varchar(30)
);

create table if not exists Работники (
ФИО varchar(100),
`Паспортные данные` int,
`Адрес проживания` varchar(100) primary key,
`Номер трудовой книжки` int,
foreign key (`Адрес проживания`) references `Почтовые отделения`(Адрес)
);
-- связь 1 ко многим(`Адрес проживания` один, отделений много)

create table if not exists Посылки (
Вес float,
Категория varchar(10),
`Трек номер` int,
Индекс varchar(100) primary key,
foreign key (Индекс) references `Почтовые отделения`(Адрес)
);
-- связь 1 ко многим(Индекс один, отделений много)