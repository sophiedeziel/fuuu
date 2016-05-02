# Fuuu

[![Build Status](https://travis-ci.org/sophiedeziel/fuuu.svg?branch=master)](https://travis-ci.org/sophiedeziel/fuuu)

![alt tag](https://raw.githubusercontent.com/sophiedeziel/fuuu/master/fuuu.jpg)

Copy/pasting error messages? It's so 2015!

Fuuu is a development tool that automates Stack Overflow searches.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fuuu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fuuu

## Usage

When you have a line of code that throws an exception and you can't figure out why, put that line in a block and pass it to fuuu.

```ruby
nil.a_method_that_throws_undefined_method
# => NoMethodError: undefined method `a_method_that_throws_undefined_method' for nil:NilClass

fuuu { nil.a_method_that_throws_undefined_method }
# It will open http://stackoverflow.com/search?q=[ruby]"undefined method `a_method_that_throws_undefined_method' for nil:NilClass" in your default browser

```

If you forget how many 'u's there are, put as much as you want.

```ruby
fuuu { nil.foo }
# works

fu { nil.foo }
# works

fuuuuuuuuuuuuuuuuuuuuuuuuuu { nil.foo }
# works
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sophiedeziel/fuuu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

