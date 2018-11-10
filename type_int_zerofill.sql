truncate table type_int_zerofill;

insert into type_int_zerofill (foo) values ('1');
insert into type_int_zerofill (foo) values ('2');
insert into type_int_zerofill (foo) values ('3');
insert into type_int_zerofill (foo) values ('4');
insert into type_int_zerofill (foo) values ('5');
insert into type_int_zerofill (foo) values ('6');
insert into type_int_zerofill (foo) values ('7');
insert into type_int_zerofill (foo) values ('8');
insert into type_int_zerofill (foo) values ('9');
insert into type_int_zerofill (foo) values ('10');
insert into type_int_zerofill (foo) values ('11');


/*
 * SELECT時に0埋めされるからと言ってもデータはintなので
 * 文字列で検索するとインデックスが使われずにフルスキャンになる
 */
explain SELECT * FROM sandbox.type_int_zerofill where id = 1;
explain SELECT * FROM sandbox.type_int_zerofill where id = 0000000001;
-- ↓は暗黙的に型変換（'0000000001' → 1）されていてインデックスで検索する
explain SELECT * FROM sandbox.type_int_zerofill where id = '0000000001';
-- ↓は文字列で検索しているのでフルスキャンしている
explain SELECT * FROM sandbox.type_int_zerofill where id like '0000000001';
