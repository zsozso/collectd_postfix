# collectd_postfix

LoadPlugin exec

<Plugin exec>
  Exec postfix "/usr/local/bin/queue_size.sh"
</Plugin>
