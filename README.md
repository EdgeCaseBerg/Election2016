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

Latest Data (last updated 6-19-2016)
======================================
```
mysql> select * from partytotal;
+-------+----------+
| party | votes    |
+-------+----------+
| Rep   | 29355758 |
| Dem   | 27805809 |
+-------+----------+
2 rows in set (0.00 sec)

mysql>  select * from votetotal;
+-----------------+----------+-----------+
| candidate       | votes    | delegates |
+-----------------+----------+-----------+
| Hillary Clinton | 15635032 |      2204 |
| Donald Trump    | 13334915 |      1408 |
| Bernie Sanders  | 12160541 |      1783 |
| Ted Cruz        |  7645756 |       493 |
| John Kasich     |  4168597 |       157 |
| Marco Rubio     |  3407305 |       169 |
| Ben Carson      |   645301 |         6 |
| Jeb Bush        |    98519 |         4 |
| Chris Christie  |    24373 |         0 |
| Carly Fiorina   |    16982 |         1 |
| Martin O'Malley |    10236 |         0 |
| Rand Paul       |     8522 |         1 |
| Mike Huckabee   |     3408 |         0 |
| Rick Santorum   |     1814 |         0 |
| Jim Gilmore     |      266 |         0 |
+-----------------+----------+-----------+
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
| CA    |
| CO    |
| CT    |
| DC    |
| DE    |
| FL    |
| GA    |
| HI    |
| IA    |
| ID    |
| IL    |
| IN    |
| KS    |
| KY    |
| LA    |
| MA    |
| MD    |
| ME    |
| MI    |
| MN    |
| MO    |
| MP    |
| MS    |
| MT    |
| NC    |
| ND    |
| NE    |
| NH    |
| NJ    |
| NM    |
| NV    |
| NY    |
| OH    |
| OK    |
| OR    |
| PA    |
| PR    |
| RI    |
| SC    |
| SD    |
| TN    |
| TX    |
| UT    |
| VA    |
| VT    |
| WA    |
| WI    |
| WV    |
| WY    |
+-------+
54 rows in set (0.00 sec)

```

Note: I am not counting any delegates from any states that have not had 
their primaries/caucus yet. It also includes places like American Samoa
