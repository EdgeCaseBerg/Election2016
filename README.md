What is this?
=======================================

As primaries and caucuses happen I'm grabbing the totals and adding them
to the data. If I need to massage anything I'm writing a script for it
or making a note of where the source numbers are coming from. 

Running make will load a csv of the information into MySQL to run
queries against. It also populates a couple of views so it's easy to
get the totals. 

This data should be updated as the [primaries happen](http://www.uspresidentialelectionnews.com/2016-presidential-primary-schedule-calendar/)

Latest Data (last updated 3-14-2016)
======================================

```
mysql> select * from votetotal;
+-----------------+---------+-----------+
| candidate       | votes   | delegates |
+-----------------+---------+-----------+
| Hillary Clinton | 4746665 |       728 |
| Donald Trump    | 4105172 |       407 |
| Ted Cruz        | 3415196 |       359 |
| Bernie Sanders  | 3362185 |       537 |
| Marco Rubio     | 2217944 |       145 |
| John Kasich     | 1033175 |        53 |
| Ben Carson      |  502205 |         3 |
| Jeb Bush        |   31610 |         3 |
| Chris Christie  |   24373 |         0 |
| Carly Fiorina   |   15477 |         1 |
| Mike Huckabee   |    3408 |         0 |
| Rick Santorum   |    1814 |         0 |
| Martin O'Malley |     752 |         0 |
| Jim Gilmore     |     266 |         0 |
| Rand Paul       |      41 |         0 |
+-----------------+---------+-----------+
15 rows in set (0.00 sec)

mysql> select * from partytotal;
+-------+----------+
| party | votes    |
+-------+----------+
| Rep   | 11350681 |
| Dem   |  8109602 |
+-------+----------+
2 rows in set (0.00 sec)

mysql> select state from primaries group by state;
+-------+
| state |
+-------+
| AK    |
| AL    |
| AR    |
| AS    |
| CO    |
| GA    |
| HI    |
| IA    |
| ID    |
| KS    |
| KY    |
| LA    |
| MA    |
| ME    |
| MI    |
| MN    |
| MS    |
| NE    |
| NH    |
| NV    |
| OK    |
| PR    |
| SC    |
| TN    |
| TX    |
| VA    |
| VT    |
+-------+
27 rows in set (0.00 sec)
```

Note: I am not counting any delegates from any states that have not had 
their primaries/caucus yet.
