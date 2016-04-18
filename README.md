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

Latest Data (last updated 4-6-2016)
======================================

```
mysql> select * from partytotal;
+-------+----------+
| party | votes    |
+-------+----------+
| Rep   | 21539408 |
| Dem   | 16269969 |
+-------+----------+
2 rows in set (0.00 sec)

mysql> select * from votetotal;
+-----------------+---------+-----------+
| candidate       | votes   | delegates |
+-----------------+---------+-----------+
| Hillary Clinton | 9196704 |      1270 |
| Donald Trump    | 8202737 |       726 |
| Bernie Sanders  | 7072513 |       991 |
| Ted Cruz        | 6267333 |       485 |
| Marco Rubio     | 3392127 |       169 |
| John Kasich     | 2960947 |       142 |
| Ben Carson      |  572926 |         6 |
| Jeb Bush        |   89478 |         4 |
| Chris Christie  |   24373 |         0 |
| Carly Fiorina   |   15477 |         1 |
| Rand Paul       |    8522 |         1 |
| Mike Huckabee   |    3408 |         0 |
| Rick Santorum   |    1814 |         0 |
| Martin O'Malley |     752 |         0 |
| Jim Gilmore     |     266 |         0 |
+-----------------+---------+-----------+
15 rows in set (0.00 sec)

mysql> select state from primaries group by state;
+-------+
| state |
+-------+
| AK    |
| AL    |
| AR    |
| AS    |
| AZ    |
| CO    |
| DC    |
| FL    |
| GA    |
| HI    |
| IA    |
| ID    |
| IL    |
| KS    |
| KY    |
| LA    |
| MA    |
| ME    |
| MI    |
| MN    |
| MO    |
| MP    |
| MS    |
| NC    |
| NE    |
| NH    |
| NV    |
| OH    |
| OK    |
| PR    |
| SC    |
| TN    |
| TX    |
| UT    |
| VA    |
| VT    |
| WI    |
| WY    |
+-------+
38 rows in set (0.00 sec)
```

Note: I am not counting any delegates from any states that have not had 
their primaries/caucus yet.
