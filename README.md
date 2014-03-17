# Capistrano::Bower [![Gem Version](https://badge.fury.io/rb/capistrano-route53.png)](http://badge.fury.io/rb/capistrano-route53)

Route 53 for support for Capistrano 3.x

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-route53'
    gem 'capistrano'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-route53

## Usage

Add your AWS keys to your envirnmental variables

    AWS_ACCESS_KEY_ID=<aws_access_key_id>
    AWS_SECRET_ACCESS_KEY=<aws_secret_access_key>
    
Require in `Capfile` to use the default task:

    require 'capistrano/route53'

You will get the following tasks
    
    cap route53:create_zone
    cap route53:delete_zone
    cap route53:remove_record
    cap route53:update_records

Configurable options, shown here with examples:

    set :route53_name, 'foo.example.com'
    set :route53_type, 'CNAME'
    set :route53_ttl, '3600'
    set :route53_value, 'my.example.com'  
      
    set :route53_roles, :web

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
