DROP DATABASE IF EXISTS new;

CREATE DATABASE IF NOT EXISTS new;
USE new;

CREATE TABLE IF NOT EXISTS Паспорт (
id INT PRIMARY KEY AUTO_INCREMENT,
Номер INT,
Серия INT,
`Кем выдан` TEXT,
`Когда выдан` DATE,
`Код подразделения` INT,
INDEX (Серия, Номер)
);

CREATE TABLE IF NOT EXISTS Гражданин (
id INT PRIMARY KEY,
Фамилия VARCHAR(20),
Имя VARCHAR(20),
Отчество VARCHAR(30),
`Дата рождения` DATE,
INDEX (Фамилия, Имя),
FOREIGN KEY (id) REFERENCES Паспорт(id)
);

CREATE TABLE IF NOT EXISTS Квартира (
id INT PRIMARY KEY AUTO_INCREMENT,
`Полный адрес` VARCHAR(300),
Владелец INT,
INDEX (`Полный адрес`),
FOREIGN KEY (Владелец) REFERENCES Гражданин(id)
);

CREATE TABLE IF NOT EXISTS `Домашние животные` (
id INT PRIMARY KEY AUTO_INCREMENT,
Кличка VARCHAR(300),
Порода VARCHAR(300),
Тип VARCHAR(300),
Хозяин INT,
INDEX (Тип, Порода),
FOREIGN KEY (Хозяин) REFERENCES Гражданин(id)
);
