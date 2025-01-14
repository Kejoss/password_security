# PasswordSecurity

PasswordSecurity is a gem to validate password complexity in Ruby applications. It ensures that passwords meet minimum security requirements, such as minimum length and use of special characters.

## Installation

Install the gem and add it to the application's Gemfile by executing:

    $ bundle add password_security

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install password_security

## Usage

To use PasswordSecurity, first require the gem in your Ruby file:

```ruby
require 'password_security'
```

Then, you can use the functionalities provided by the gem in your ActiveRecord models. For example, to validate the strength of a password in a user model:

```ruby
class User < ApplicationRecord
  validates_password_strength :password
end
```

The password must be at least 14 characters long, including at least one letter, one number, and one special character.

## Development

After cloning the repository, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Kejoss/password_security. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Kejoss/password_security/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the PasswordSecurity project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Kejoss/password_security/blob/master/CODE_OF_CONDUCT.md).
