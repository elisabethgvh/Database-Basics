create table board_game (
id int not NULL,
name VARCHAR (20) not NULL,
players VARCHAR (20) not NULL,
ages VARCHAR (20),
price decimal (4,2),
constraint constraint1 unique (name)
--UNIQUE (name) |after primary|
primary key (id));

insert into board_game values (1, 'Balloon PoP', '2-4', '8+', 35);
insert into board_game values (2, 'Mysterium', '2-7', '10+', 49.95);
insert into board_game values (5, 'Carcassonne', '2-5', '7+', 33.5);
insert into board_game values (6, 'Trivial Pursuit', '2-36', '16+', 50);

.mode column
select * from board_game

