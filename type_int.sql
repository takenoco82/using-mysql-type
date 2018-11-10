truncate table type_int;

/*
 * intの最小値・最大値
 */
-- Error Code: 1264. Out of range value for column 'col_int' at row 1
-- insert into type_int (col_int) values (-2147483649);

insert into type_int (col_int) values (-2147483648);
insert into type_int (col_int) values (0);
insert into type_int (col_int) values (2147483647);

-- Error Code: 1264. Out of range value for column 'col_int' at row 1
-- insert into type_int (col_int) values (2147483648);


/*
 * 表示幅を指定して定義しても最小値・最大値には関係ない
 */
insert into type_int (col_int_width1) values (-2147483648);
insert into type_int (col_int_width1) values (0);
insert into type_int (col_int_width1) values (2147483647);


/*
 * unsigned で定義すると負の値は登録できない
 */
-- Error Code: 1264. Out of range value for column 'col_int_unsigned' at row 1
-- insert into type_int (col_int_unsigned) values (-1);

insert into type_int (col_int_unsigned) values (0);
insert into type_int (col_int_unsigned) values (4294967295);

-- Error Code: 1264. Out of range value for column 'col_int_unsigned' at row 1
-- insert into type_int (col_int_unsigned) values (4294967296);


/*
 * zerofill で定義すると暗黙的に unsigned になる（負の値は登録できない）
 */
insert into type_int (col_int_zerofill) values (0);
insert into type_int (col_int_zerofill) values (4294967295);


SELECT * FROM sandbox.type_int;
