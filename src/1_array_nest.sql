create table users(id int primary key, json text);
insert into users values(1, '[[1,2],["A", "B"]]');
insert into users values(2, '[[3],["C"]]');
insert into users values(3, '[]');
.headers on
.mode column
--select json_tree.value from users, json_tree(users.json);
select * from users, json_tree((select json_tree.value from users, json_tree(users.json)));
