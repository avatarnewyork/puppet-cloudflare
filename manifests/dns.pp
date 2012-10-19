class cloudflare::dns (
  $rec_type = "A",
  $recname = "$hostname",
  $content = "$ipaddress_eth0",
  $service_mode = "0",
  $ttl = "1",
  ) {

  $_a = " -d 'a=rec_new'"
  $_tkn = " -d 'tkn=${cloudflare::tkn}'"
  $_email = " -d 'email=${cloudflare::email}'"
  $_z = " -d 'z=${cloudflare::domain}'"
  $_rec_type = " -d 'type=$rec_type'"
  $_name = " -d 'name=$recname'"
  $_content = " -d 'content=$content'"
  $_service_mode = " -d 'service_mode=$service_mode'"
  $_ttl = " -d 'ttl=$ttl'"
  
  exec{"/usr/bin/curl ${cloudflare::cloudflare_api} $_a $_tkn $_email $_z $_rec_type $_name $_content $_service_mode $_ttl":
    refreshonly => 1,
    logoutput => on_failure,
  }
}
