puppet-cloudbackup
==================

CloudFlare Puppet Module

## Module Installation

* Add the 'cloudflare' folder into your module path
* Include the class and configure the relevant variables for your CloudFlare account:
* __email__ - your cloudflare email
* __tkn__ - found under Your Account > API key: https://www.cloudflare.com/my-account
* __domain__ - the domain for which your managing

### EXAMPLE

```ruby
class { 'cloudflare':
email => 'xxxxx@xxxxxxx.com',
tkn  => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
domain  => 'www.yourdomain.com',
}
```

### Add a DNS Record

```ruby
class{'cloudflare::dns':
rec_type => "A",
recname => "$hostname",
}
```

### Build Status
The build should satisfy the following:

* puppet-lint tests
* rspec tests defined under the rspec dir

The current status is: 

[![Build Status](https://secure.travis-ci.org/avatarnewyork/puppet-cloudbackup.png?branch=master)](http://travis-ci.org/avatarnewyork/puppet-cloudbackup)
