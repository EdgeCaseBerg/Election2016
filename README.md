What is this?
=======================================

As primaries and caucus's happen I'm grabbing the totals and adding them
to the data. If I need to massage anything I'm writing a script for it
or making a note of where the source numbers are coming from. 

Running make will load a csv of the information into MySQL to run
queries against. It also populates a couple of view's so it's easy to
get the totals. 

This data should be updated as the [primaries happen](http://www.uspresidentialelectionnews.com/2016-presidential-primary-schedule-calendar/)

Latest Data (last updated 2-21-16)
======================================

```
mysql> select * from votetotal;
+-----------------+--------+-----------+
| candidate       | votes  | delegates |
+-----------------+--------+-----------+
| Bernie Sanders  | 226906 |        52 |
| Hillary Clinton | 171942 |        54 |
| Donald Trump    | 145833 |        17 |
| Ted Cruz        |  84855 |        11 |
| John Kasich     |  48383 |         5 |
| Jeb Bush        |  31310 |         3 |
| Marco Rubio     |  30032 |         3 |
| Chris Christie  |  24353 |         0 |
| Carly Fiorina   |  15191 |         1 |
| Ben Carson      |   6509 |         0 |
| Mike Huckabee   |   3345 |         0 |
| Rick Santorum   |   1783 |         0 |
| Martin O'Malley |    752 |         0 |
| Jim Gilmore     |    266 |         0 |
+-----------------+--------+-----------+
14 rows in set (0.00 sec)

mysql> select * from partytotal;
+-------+--------+
| party | votes  |
+-------+--------+
| Dem   | 399600 |
| Rep   | 391860 |
+-------+--------+
2 rows in set (0.00 sec)


```

