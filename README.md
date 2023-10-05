## About suppliersecurity.info

Suppliersecurity.info is a service which monitors and catalogs compliance, privacy and security data of the top SaaS companies. More information on our website: https://suppliersecurity.info.

## Prerequisites

Generate an API key at https://suppliersecurity.info/api_tokens (Authentication required)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'suppliersecurity_gem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install suppliersecurity_gem

## Usage

```ruby
require "suppliersecurity_gem"
api = SupplierSecurity::API.new("your token")
irb(main):003> api.search("fragment of product url")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/suppliersecurity_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/suppliersecurity_gem/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SuppliersecurityGem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/suppliersecurity_gem/blob/main/CODE_OF_CONDUCT.md).
