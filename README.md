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
| Hillary Clinton | 443456 |        93 |
| Donald Trump    | 385685 |        61 |
| Bernie Sanders  | 322183 |        66 |
| Ted Cruz        | 249645 |        11 |
| Marco Rubio     | 195913 |         3 |
| John Kasich     | 104589 |         5 |
| Jeb Bush        |  89173 |         3 |
| Ben Carson      |  59835 |         0 |
| Chris Christie  |  24353 |         0 |
| Carly Fiorina   |  15191 |         1 |
| Mike Huckabee   |   3345 |         0 |
| Rick Santorum   |   1783 |         0 |
| Martin O'Malley |    752 |         0 |
| Jim Gilmore     |    266 |         0 |
+-----------------+--------+-----------+
14 rows in set (0.01 sec)

mysql> select * from partytotal;
+-------+---------+
| party | votes   |
+-------+---------+
| Rep   | 1129778 |
| Dem   |  766391 |
+-------+---------+
2 rows in set (0.00 sec)

```

Note: I am not counting any delegates from any state's that have not had 
their primaries/caucus yet.