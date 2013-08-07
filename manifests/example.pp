$site = 'mikebell'
apache::vhost { "${site}.drupal.dev":
  server_name   => "${site}.drupal.dev",
  serveraliases => [
  ],
  docroot       => "/var/www/${site}.drupal.dev",
  port          => '80',
  env_variables => [
  ],
  priority      => '1',
}

mysql::db { $site:
  user     => $site,
  password => $site,
  host     => 'localhost',
  grant    => ['all'],
}