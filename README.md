# rubygems-server

rubygems-server allows users to serve gems for consumption by `gem --remote-install`. 

gem_server starts an HTTP server on the given port and serves the following:

* "/" - Browsing of gem spec files for installed gems
* "/specs.#{Gem.marshal_version}.gz" - specs name/version/platform index
* "/latest_specs.#{Gem.marshal_version}.gz" - latest specs
  name/version/platform index
* "/quick/" - Individual gemspecs
* "/gems" - Direct access to download the installable gems
* "/rdoc?q=" - Search for installed rdoc documentation

This gem is a replacement for the `gem server` command that was removed in RubyGems 3.3.0. And This gem is for development purposes only. It is not intended to be used in production. If you hope to use it in production, you should consider using [gemstash](https://github.com/rubygems/gemstash/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubygems-server'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rubygems-server

##  Usage

```ruby
gem_server = Gem::Server.new Gem.dir, 8089, false
gem_server.run
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rubygems/rubygems-server.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
