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

Latest Data (last updated 5-13-2016)
======================================
```
mysql> select * from partytotal;
+-------+----------+
| party | votes    |
+-------+----------+
| Rep   | 26171553 |
| Dem   | 21917846 |
+-------+----------+
2 rows in set (0.00 sec)

mysql> select * from votetotal;
+-----------------+----------+-----------+
| candidate       | votes    | delegates |
+-----------------+----------+-----------+
| Hillary Clinton | 12364745 |      1674 |
| Donald Trump    | 10927130 |      1047 |
| Bernie Sanders  |  9548568 |      1322 |
| Ted Cruz        |  7317148 |       488 |
| John Kasich     |  3792095 |       152 |
| Marco Rubio     |  3402192 |       169 |
| Ben Carson      |   587352 |         6 |
| Jeb Bush        |    91776 |         4 |
| Chris Christie  |    24373 |         0 |
| Carly Fiorina   |    15477 |         1 |
| Rand Paul       |     8522 |         1 |
| Martin O'Malley |     4533 |         0 |
| Mike Huckabee   |     3408 |         0 |
| Rick Santorum   |     1814 |         0 |
| Jim Gilmore     |      266 |         0 |
+-----------------+----------+-----------+
15 rows in set (0.01 sec)

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
| NC    |
| NE    |
| NH    |
| NV    |
| NY    |
| OH    |
| OK    |
| PA    |
| PR    |
| RI    |
| SC    |
| TN    |
| TX    |
| UT    |
| VA    |
| VT    |
| WI    |
| WV    |
| WY    |
+-------+
46 rows in set (0.00 sec)

```

Note: I am not counting any delegates from any states that have not had 
their primaries/caucus yet. It also includes places like American Samoa
