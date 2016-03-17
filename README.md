What is this?
=======================================

As primaries and caucuses happen I'm grabbing the totals and adding them
to the data. If I need to massage anything I'm writing a script for it
or making a note of where the source numbers are coming from. 

Running make will load a csv of the information into MySQL to run
queries against. It also populates a couple of views so it's easy to
get the totals. 

Sources are listed in data/primaries.csv once per state

This data should be updated as the [primaries happen](http://www.uspresidentialelectionnews.com/2016-presidential-primary-schedule-calendar/)

Latest Data (last updated 3-14-2016)
======================================

```
mysql> select * from votetotal;
+-----------------+---------+-----------+
| candidate       | votes   | delegates |
+-----------------+---------+-----------+
| Hillary Clinton | 4746767 |       732 |
| Donald Trump    | 4105633 |       408 |
| Ted Cruz        | 3416191 |       368 |
| Bernie Sanders  | 3362185 |       537 |
| Marco Rubio     | 2219192 |       156 |
| John Kasich     | 1034184 |        62 |
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
| Rep   | 11354394 |
| Dem   |  8109704 |
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
| DC    |
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
| MP    |
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
| WY    |
+-------+
30 rows in set (0.01 sec)

```

Note: I am not counting any delegates from any states that have not had 
their primaries/caucus yet.
