# NAME

Date::Utility - A class that represents a datetime in various format

# SYNOPSIS

    use Date::Utility;

    Date::Utility->new(); # Use current time
    Date::Utility->new(1249637400);
    Date::Utility->new('dd-mmm-yy');
    Date::Utility->new('dd-mmm-yyyy');
    Date::Utility->new('dd-Mmm-yy hh:mm:ssGMT');
    Date::Utility->new('dd-Mmm-yy hhhmm');
    Date::Utility->new('YYYY-MM-DD');
    Date::Utility->new('YYYYMMDD');
    Date::Utility->new('YYYYMMDDHHMMSS');
    Date::Utility->new('YYYY-MM-DD HH:MM:SS');
    Date::Utility->new('YYYY-MM-DDTHH:MM:SSZ');

# DESCRIPTION

A class that represents a datetime in various format

# ATTRIBUTES

## second

## minute

## hour

## day\_of\_month

## month

## quarter\_of\_year

## day\_of\_week

    return day of week begin with 0

## day\_of\_year

## year

## time

## time\_hhmm

Returns time in hh:mm format

## time\_hhmmss

Returns time in hh:mm:ss format

## time\_cutoff

Set the timezone for cutoff to UTC

## year\_in\_two\_digit

Returns year in two digit format. Example: 15

## timezone

Set the timezone to GMT

## datetime

See, db\_timestamp

## datetime\_ddmmmyy\_hhmmss\_TZ

Returns datetime in "dd-mmm-yy hh:mm:ssGMT" format

## datetime\_ddmmmyy\_hhmmss

Returns datetime in "dd-mmm-yy hh:mm:ss" format

## date\_ddmmmyyyy

Returns date in dd-mmm-yyyy format

## date\_ddmonthyyyy

Returns date in dd-month-yyyy format

## date

Returns datetime in YYYY-MM-DD format

## date\_ddmmmyy

Returns datetime in dd-Mmm-yy format

## days\_since\_epoch

Returns number of days since 1970-01-01

## seconds\_after\_midnight

Returns number of seconds after midnight of the same day.

## is\_a\_weekend

## is\_a\_weekday

## new

Returns a Date::Utility object.

## \_parse\_datetime\_param

User may supplies datetime parameters but it currently only supports the following formats:
dd-mmm-yy ddhddGMT, dd-mmm-yy, dd-mmm-yyyy, dd-Mmm-yy hh:mm:ssGMT, YYYY-MM-DD, YYYYMMDD, YYYYMMDDHHMMSS, yyyy-mm-dd hh:mm:ss, yyyy-mm-ddThh:mm:ss or yyyy-mm-ddThh:mm:ssZ.

## days\_between

Returns number of days between two dates.

## is\_before

Returns a boolean which indicates whether this date object is earlier in time than the supplied date object.

## is\_after

Returns a boolean which indicates whether this date object is later in time than the supplied date object.

## is\_same\_as

Returns a boolean which indicates whether this date object is the same time as the supplied date object.

## day\_as\_string

Returns the name of the current day in short form. Example: Sun.

## full\_day\_name

Returns the name of the current day. Example: Sunday

## month\_as\_string

Returns the name of current month in short form. Example: Jan

## full\_month\_name

Returns the full name of current month. Example: January

## http\_expires\_format

Returns datetime in this format: Fri, 27 Nov 2009 02:12:02 GMT

## date\_ddmmyy

Returns date in this format "dd-mm-yy" (28-02-10)

## date\_ddmmyyyy

Returns date in this format "dd-mm-yyyy" (28-02-2010)

## date\_yyyymmdd

Returns date in this format "yyyy-mm-dd" (2010-03-02)

## datetime\_yyyymmdd\_hhmmss

Returns: "yyyy-mm-dd hh:mm:ss" (2010-03-02 05:09:40)

## datetime\_iso8601 iso8601

Since all internal representations are in UTC
Returns "yyyy-mm-ddThh:mm:ssZ" (2010-02-02T05:09:40Z)

## datetime\_yyyymmdd\_hhmmss\_TZ

Returns datetime in this format "yyyy-mm-dd hh:mm:ssGMT" (2010-03-02 05:09:40GMT)

## days\_in\_month

## timezone\_offset

Returns a TimeInterval which represents the difference between UTC and the time in certain timezone

## is\_dst\_in\_zone

Returns a boolean which indicates whether a certain zone is in DST at the given epoch

## plus\_time\_interval

Returns a new Date::Utility plus the supplied Time::Duration::Concise::Localize.  Negative TimeIntervals will move backward.

Will also attempt to create a TimeInterval from a supplied code, if possible.

## minus\_time\_interval

Returns a new Date::Utility  minus the supplied Time::Duration::Concise::Localize.  Negative TimeIntervals will move forward.

Will also attempt to create a TimeInterval from a supplied code, if possible.

## months\_ahead

Returns the month ahead or backward from the supplied month in the format of Mmm-yy.
It could hanlde backward or forward move from the supplied month.

## move\_to\_nth\_dow

Takes an integer as an ordinal and a day of week representation

The following are all equivalent:
`move_to_nth_dow(3, 'Monday')`
`move_to_nth_dow(3, 'Mon')`
`move_to_nth_dow(3, 1)`

Returning the 3rd Monday of the month represented by the object or
`undef` if it does not exist.

An exception is thrown on improper day of week representations.

# STATIC METHODS

## month\_number\_to\_abbrev

Static method returns a standard mapping from month numbers to our 3
character abbreviated format.

## month\_abbrev\_to\_number

Static method returns a standard mapping from 3
character abbreviated format to month numbers

# STATIC METHODS

## month\_number\_to\_fullname

Static method returns a standard mapping from month numbers to fullname.

## is\_epoch\_timestamp

Check if a given datetime is an epoch timestemp, i.e. an integer of under 14 digits.

## is\_ddmmmyy

Check if a given "date" is in dd-Mmm-yy format (e.g. 1-Oct-10)

## truncate\_to\_day

Returns a Date::Utility object with the time part truncated out of it.

For instance, '2011-12-13 23:24:25' will return a new Date::Utility
object representing '2011-12-13 00:00:00'

## truncate\_to\_month

Returns a Date::Utility object with the day and time part truncated out of it.

For instance, '2011-12-13 23:24:25' will return a new Date::Utility
object representing '2011-12-01 00:00:00'

## truncate\_to\_hour

Returns a Date::Utility object with the minutes and seconds truncated out of it.

For instance, '2011-12-13 23:24:25' will return a new Date::Utility
object representing '2011-12-13 23:00:00'

## today

Returns Date::Utility object for the start of the current day. Much faster than
Date::Utility->new, as it will return the same object till the end of the day.

## plus\_years

Takes the following argument as named parameter:

- `years` - number of years to be added. (Integer)

Returns a new [Date::Utility](https://metacpan.org/pod/Date%3A%3AUtility) object plus the given years. If the day is greater than days in the new month, it will take the day of end month.
e.g.

    print Date::Utility->new('2000-02-29')->plus_years(1)->date_yyyymmdd;
    # will print 2001-02-28

## minus\_years

Takes the following argument as named parameter:

- `years` - number of years to be subracted. (Integer)

Returns a new [Date::Utility](https://metacpan.org/pod/Date%3A%3AUtility) object minus the given years. If the day is greater than days in the new month, it will take the day of end month.
e.g.

    print Date::Utility->new('2000-02-29')->minus_years(1)->date_yyyymmdd;
    # will print 1999-02-28

## plus\_months

Takes the following argument as named parameter:

- `years` - number of months to be added. (Integer)

Returns a new [Date::Utility](https://metacpan.org/pod/Date%3A%3AUtility) object plus the given months. If the day is greater than days in the new month, it will take the day of end month.
e.g.

    print Date::Utility->new('2000-01-31')->plus_months(1)->date_yyyymmdd;
    # will print 2000-02-28

## minus\_months

Takes the following argument as named parameter:

- `years` - number of months to be subracted. (Integer)

Returns a new [Date::Utility](https://metacpan.org/pod/Date%3A%3AUtility) object minus the given months. If the day is greater than days in the new month, it will take the day of end month.
e.g.

    print Date::Utility->new('2000-03-31')->minus_months(1)->date_yyyymmdd;
    # will print 2000-02-28

## create\_trimmed\_date

Takes the following argument as named parameter:

- `year` - calendar year of the date (Integer)
- `month` - calendar month of the date. (Integer)
- `day` - day of the month of the date. (Integer)

Returns a valid [Date::Utility](https://metacpan.org/pod/Date%3A%3AUtility) object whose date part is same with the given year, month and day and time part is not changed. If the day is greater than the max day in that month , then use that max day as the day in the new object.

# DEPENDENCIES

- [Moo](https://metacpan.org/pod/Moo)
- [DateTime](https://metacpan.org/pod/DateTime)
- [POSIX](https://metacpan.org/pod/POSIX)
- [Scalar::Util](https://metacpan.org/pod/Scalar%3A%3AUtil)
- [Time::Local](https://metacpan.org/pod/Time%3A%3ALocal)
- [Syntax::Keyword::Try](https://metacpan.org/pod/Syntax%3A%3AKeyword%3A%3ATry)

# AUTHOR

Binary.com, `<support at binary.com>`

# BUGS

Please report any bugs or feature requests to `bug-date-utility at rt.cpan.org`, or through
the web interface at [http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Date-Utility](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Date-Utility).  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Date::Utility

You can also look for information at:

- RT: CPAN's request tracker (report bugs here)

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Utility](http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Utility)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/Date-Utility](http://annocpan.org/dist/Date-Utility)

- CPAN Ratings

    [http://cpanratings.perl.org/d/Date-Utility](http://cpanratings.perl.org/d/Date-Utility)

- Search CPAN

    [http://search.cpan.org/dist/Date-Utility/](http://search.cpan.org/dist/Date-Utility/)

# LICENSE AND COPYRIGHT

Copyright 2015 Binary.com.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

[http://www.perlfoundation.org/artistic\_license\_2\_0](http://www.perlfoundation.org/artistic_license_2_0)

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
