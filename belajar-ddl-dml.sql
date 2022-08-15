MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
6 rows in set (0.001 sec)
MariaDB [(none)]> use sekolah;
Database changed
MariaDB [sekolah]> create table siswa (
    -> nis CHAR(8) PRIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tmp_lahir VARCHAR(50),
    -> tgl_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT);
Query OK, 0 rows affected (1.553 sec)

MariaDB [sekolah]> desc siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.195 sec)
MariaDB [sekolah]> insert into siswa values (
    -> '12100274',
    -> 'FIRDAUS WIGUNA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '70,97');
Query OK, 1 row affected, 1 warning (0.269 sec)

MariaDB [sekolah]> select *from siswa;
+----------+----------------+------+-----------+------------+----------+----------+-------+
| nis      | nama           | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+----------------+------+-----------+------------+----------+----------+-------+
| 12100274 | FIRDAUS WIGUNA | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 |    70 |
+----------+----------------+------+-----------+------------+----------+----------+-------+
1 row in set (0.001 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100823',
    -> 'WANANDA DILLA ZAHRA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-01-14',
    -> 'DAWUAN',
    -> '11-RPL-1',
    -> '80,97');
Query OK, 1 row affected, 1 warning (0.118 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100451',
    -> 'MOHAMAD INDRA ERDIN',
    -> 'L',
    -> 'SUBANG',
    -> '2005-09-22',
    -> 'PAGADEN',
    -> '11-RPL-1',
    -> '90,97');
Query OK, 1 row affected, 1 warning (0.097 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100777',
    -> 'TASYA AMELIA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-06-14',
    -> 'DUKUH DUA',
    -> '11-RPL-1',
    -> '80,97');
Query OK, 1 row affected, 1 warning (0.084 sec)

MariaDB [sekolah]> insert into siswa values(
    -> '12100306',
    -> 'HASBI DHIYA FARHANSYAH',
    -> 'L',
    -> 'GARUT',
    -> '2005-11-17',
    -> 'PAGADEN',
    -> '11-RPL-1',
    -> '90,97');
Query OK, 1 row affected, 1 warning (0.092 sec)

MariaDB [sekolah]> update siswa set tmp_lahir="BANDUNG" where nis="12100274";
Query OK, 1 row affected (0.205 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> update siswa set tgl_lahir="2005-05-05" alamat="BINONG" where nis="12100274";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'alamat="BINONG" where nis="12100274"' at line 1
MariaDB [sekolah]> update siswa set tgl_lahir="2005-05-05",alamat="BINONG" where nis="12100274";
Query OK, 1 row affected (0.083 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> select *from siswa;
+----------+------------------------+------+-----------+------------+-----------+----------+-------+
| nis      | nama                   | jk   | tmp_lahir | tgl_lahir  | alamat    | kelas    | nilai |
+----------+------------------------+------+-----------+------------+-----------+----------+-------+
| 12100274 | FIRDAUS WIGUNA         | L    | BANDUNG   | 2005-05-05 | BINONG    | 11-RPL-1 |    70 |
| 12100306 | HASBI DHIYA FARHANSYAH | L    | GARUT     | 2005-11-17 | PAGADEN   | 11-RPL-1 |    90 |
| 12100451 | MOHAMAD INDRA ERDIN    | L    | SUBANG    | 2005-09-22 | PAGADEN   | 11-RPL-1 |    90 |
| 12100777 | TASYA AMELIA           | P    | SUBANG    | 2006-06-14 | DUKUH DUA | 11-RPL-1 |    80 |
| 12100823 | WANANDA DILLA ZAHRA    | P    | SUBANG    | 2006-01-14 | DAWUAN    | 11-RPL-1 |    80 |
+----------+------------------------+------+-----------+------------+-----------+----------+-------+
5 rows in set (0.001 sec)

MariaDB [sekolah]> delete from siswa where nis="12100274";
Query OK, 1 row affected (0.107 sec)

MariaDB [sekolah]> select *from siswa;
+----------+------------------------+------+-----------+------------+-----------+----------+-------+
| nis      | nama                   | jk   | tmp_lahir | tgl_lahir  | alamat    | kelas    | nilai |
+----------+------------------------+------+-----------+------------+-----------+----------+-------+
| 12100306 | HASBI DHIYA FARHANSYAH | L    | GARUT     | 2005-11-17 | PAGADEN   | 11-RPL-1 |    90 |
| 12100451 | MOHAMAD INDRA ERDIN    | L    | SUBANG    | 2005-09-22 | PAGADEN   | 11-RPL-1 |    90 |
| 12100777 | TASYA AMELIA           | P    | SUBANG    | 2006-06-14 | DUKUH DUA | 11-RPL-1 |    80 |
| 12100823 | WANANDA DILLA ZAHRA    | P    | SUBANG    | 2006-01-14 | DAWUAN    | 11-RPL-1 |    80 |
+----------+------------------------+------+-----------+------------+-----------+----------+-------+
4 rows in set (0.001 sec)