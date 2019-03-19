---
TITLE:     The ISO date format
Date:   Fri Mar 8 09:33:11 2019 
---

[ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) specifies the digital representation of date and time. For dates, which are of interest to us here, there are two different ways of proceeding: we can give the year, the month, and the day of the month, or we can give the year, the week, and the day of the week. August 8, 2018 can therefore be written `2018-08-08` or `2018-W32-3`, as it is the third day (Wednesday) of week 32 of 2018.

The definition of the week number requires some thought, as January 1st rarely falls on a Monday. What week is the first week of the year? The answer given by ISO 8601 is: the one that has more than half of its days in the new year, which is equivalent to the one that contains the first Thursday of the year. Consequently, it is quite possible, even frequent, that the first day of the first week of year *N* is in year *N-1*. To designate a whole week, we simply do not provide the day.

The Sentinel Network uses this definition of the week number, but does not respect the precise representation provided by ISO 8601. Instead of writing the third week of 1995 as `1995-W03`, it uses `199503`.
