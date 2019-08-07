create table users(id int primary key, json text);
insert into users values(1, '["A", "B"]');
insert into users values(2, '["C"]');
insert into users values(3, '[]');
.headers on
.mode column
select * from users, json_tree(users.json);
--select key, value from users, json_tree(users.json) where key!='';
--select json_tree.value from users, json_tree(users.json);

