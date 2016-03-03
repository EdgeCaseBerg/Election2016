What is this?
=======================================

As primaries and caucus's happen I'm grabbing the totals and adding them
to the data. If I need to massage anything I'm writing a script for it
or making a note of where the source numbers are coming from. 

Running make will load a csv of the information into MySQL to run
queries against. It also populates a couple of view's so it's easy to
get the totals. 

This data should be updated as the [primaries happen](http://www.uspresidentialelectionnews.com/2016-presidential-primary-schedule-calendar/)

Latest Data (last updated 3-2-2016)
======================================

```
mysql> select * from votetotal;
+-----------------+---------+-----------+
| candidate       | votes   | delegates |
+-----------------+---------+-----------+
| Hillary Clinton | 3737914 |       605 |
| Donald Trump    | 3331337 |       298 |
| Ted Cruz        | 2747957 |       220 |
| Bernie Sanders  | 2616127 |       409 |
| Marco Rubio     | 2071789 |        97 |
| John Kasich     |  648200 |        24 |
| Ben Carson      |  551774 |         3 |
| Jeb Bush        |   89173 |         3 |
| Chris Christie  |   24353 |         0 |
| Carly Fiorina   |   15191 |         1 |
| Mike Huckabee   |    3345 |         0 |
| Rick Santorum   |    1783 |         0 |
| Martin O'Malley |     752 |         0 |
| Jim Gilmore     |     266 |         0 |
+-----------------+---------+-----------+
14 rows in set (0.00 sec)

mysql> select * from partytotal;
+-------+---------+
| party | votes   |
+-------+---------+
| Rep   | 9485168 |
| Dem   | 6354793 |
+-------+---------+
2 rows in set (0.00 sec)

```

Note: I am not counting any delegates from any state's that have not had 
their primaries/caucus yet.
