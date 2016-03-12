What is this?
=======================================

As primaries and caucuses happen I'm grabbing the totals and adding them
to the data. If I need to massage anything I'm writing a script for it
or making a note of where the source numbers are coming from. 

Running make will load a csv of the information into MySQL to run
queries against. It also populates a couple of views so it's easy to
get the totals. 

This data should be updated as the [primaries happen](http://www.uspresidentialelectionnews.com/2016-presidential-primary-schedule-calendar/)

Latest Data (last updated 3-8-2016)
======================================

```
mysql> select * from votetotal;
+-----------------+---------+-----------+
| candidate       | votes   | delegates |
+-----------------+---------+-----------+
| Hillary Clinton | 4739694 |       747 |
| Donald Trump    | 4302247 |       422 |
| Ted Cruz        | 3558022 |       347 |
| Bernie Sanders  | 3360607 |       527 |
| Marco Rubio     | 2337666 |       115 |
| John Kasich     | 1084671 |        51 |
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
+-------+----------+
| party | votes    |
+-------+----------+
| Rep   | 11968491 |
| Dem   |  8101053 |
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
| SC    |
| TN    |
| TX    |
| VA    |
| VT    |
+-------+
26 rows in set (0.00 sec)
```

Note: I am not counting any delegates from any states that have not had 
their primaries/caucus yet.
