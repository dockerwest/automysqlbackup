automysqlbackup
===============

automysqlbackup, latest version (currently 3.0rc6)

Info
----

automysqlbackup image to create a great set of mysql backups

Usage
-----

~~~ sh
$ docker run \
  -v /etc/automysqlbackup/automysqlbackup.conf:/etc/automysqlbackup/automysqlbackup.conf:ro \
  -v /your/backup/location:/backup \
  --link my_mysqld_container:mysql \
  dockerwest/automysqlbackup
~~~

With CRON (usable with docker compose that way, you can use system cron with
the previous command)

~~~ sh
$ docker run \
  -v /etc/automysqlbackup/automysqlbackup.conf:/etc/automysqlbackup/automysqlbackup.conf:ro \
  -v /your/backup/location:/backup \
  --link my_mysqld_container:mysql \
  -e CRON="0 13 2 * * *" \
  dockerwest/automysqlbackup
~~~

The above will cause the backup to run every night at 2:13 UTC

CRON Expression Format
----------------------

A cron expression represents a set of times, using 6 space-separated fields.

Field name   | Mandatory? | Allowed values  | Allowed special characters
----------   | ---------- | --------------  | --------------------------
Seconds      | Yes        | 0-59            | * / , -
Minutes      | Yes        | 0-59            | * / , -
Hours        | Yes        | 0-23            | * / , -
Day of month | Yes        | 1-31            | * / , - ?
Month        | Yes        | 1-12 or JAN-DEC | * / , -
Day of week  | Yes        | 0-6 or SUN-SAT  | * / , - ?

License
-------

MIT License (MIT). See [License File](LICENSE.md) for more information.
