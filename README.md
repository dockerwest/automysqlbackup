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

License
-------

MIT License (MIT). See [License File](LICENSE.md) for more information.
