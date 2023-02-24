#Create schema `HFdb`;
#drop schema `HFdb`;
use `HFdb`;
create table cat (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);
create table dog (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);
create table hamster (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);

create table horse (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);
create table camel (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);
create table donkey (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
	Birthday DATE
);
create table pet (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);
create table packAnimal (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    liftWeight INT,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday DATE
);
create table HF(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(45),
    Command VARCHAR(45),
    Birthday Date
    );
    insert into cat (Name, Command, Birthday) values
    ('Муська', 'Спать', '2023-01-01'),
    ('Мурзик', 'Охотиться', '2017-08-21'),
	('Леди', 'Спать', '2016-03-06'),
    ('Мурка', 'Спать', '2020-03-15');
    select * from cat;
    insert into dog (Name, Command, Birthday) values
    ('Фобос', 'Лежать', '2023-01-01'),
    ('Марат', 'Лежать', '2017-08-21'),
	('Лайка', 'Лежать', '2016-03-06'),
    ('Деймос', 'Лежать', '2020-03-15');
	select * from dog;
 	insert into hamster (Name, Command, Birthday) values
    ('Хомяк', 'есть', '2023-01-01'),
    ('Фобос', 'спать', '2017-08-21'),
	('Марат', 'гулять', '2016-03-06'),
    ('Кешью', 'прыгать', '2020-03-15');
	select * from hamster;
   	insert into camel (camelName, camelCommand, camelLiftWeight, camelBirthday) values
    ('Лорд', 'Поднять', 200, '2023-01-01'),
    ('Аида', 'Поднять', 300, '2017-08-21'),
	('Марс', 'Поднять', 500, '2016-03-06'),
    ('Венера', 'Поднять', 100, '2020-03-15');
	select * from camel;
	insert into horse (Name, Command, liftWeight, Birthday) values
    ('Мерлин', 'Галоп', 250, '2023-01-01'),
    ('Табил', 'Рысь', 150, '2017-08-21'),
	('Плотва', 'Галоп', 300, '2016-03-06'),
    ('Мерина', 'Галоп', 250, '2020-03-15');
	select * from horse;    
    insert into donkey (Name, Command, liftWeight, Birthday) values
    ('Алдай', 'Жевать', 30, '2023-01-01'),
    ('Белла', 'Жевать', 25, '2017-08-21'),
	('Зиги', 'Жевать', 40, '2020-03-15'),
    ('Верблюд', 'Жевать', 50, '2020-03-15');
	select * from donkey;  	
 delete from camel where id > 0;
 select * from camel;
 create table packAnimalNew (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command, 
        Birthday
from horse union 
select  Name, 
        Command, 
        Birthday
from donkey;
select * from packAnimalNew;
INSERT into pet (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from cat union 
select  Name, 
        Command, 
        Birthday
from dog union
select  Name, 
        Command, 
        Birthday
from hamster;
select * from pet;
INSERT into HF (Name, Command, Birthday)
select  Name, 
        Command, 
        Birthday
from pet union 
select  Name, 
        Command, 
        Birthday
from packAnimalNew;
select * from HF;
create table youngAnimals (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select Name, 
        Command, 
        Birthday,
        Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) as age
from HF
where Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) > 1 
	and Round((year(current_date()) - year(Birthday)) + (month(current_date() - month(Birthday)))/10, 2) < 3;
select * from youngAnimals;
create table newHF (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
select  Name, 
        Command,
        Birthday,
        'cat' as oldTable
from cat union 
select  Name, 
        Command, 
        Birthday,
        'dog' as oldTable
from dog union
select  Name, 
        Command, 
        Birthday,
        'hamster' as oldTable
from hamster union 
select  Name, 
        Command, 
        Birthday,
        'horse' as oldTable
from horse union 
select  Name, 
        Command, 
        Birthday,
        'donkey' as oldTable
from donkey;
select * from newHF;

