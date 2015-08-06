# bugsnag-ext

[![Gem Version][gem-image]][gem-link]
[![Dependency Status][deps-image]][deps-link]
[![Build Status][build-image]][build-link]
[![Coverage Status][cov-image]][cov-link]
[![Code Climate][gpa-image]][gpa-link]

Useful extensions of Bugsnag.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bugsnag-ext'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bugsnag-ext

## Usage

### `Bugsnag::Ext::ResqueRetry`

```ruby
class SomeResqueJob
  include Bugsnag::Ext::ResqueRetry
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new [Pull Request](../../pull/new/master)

## Copyright

Copyright (c) 2015 Daisuke Taniwaki. See [LICENSE](LICENSE) for details.

[gem-image]:   https://badge.fury.io/rb/bugsnag-ext.svg
[gem-link]:    http://badge.fury.io/rb/bugsnag-ext
[build-image]: https://secure.travis-ci.org/dtaniwaki/bugsnag-ext.png
[build-link]:  http://travis-ci.org/dtaniwaki/bugsnag-ext
[deps-image]:  https://gemnasium.com/dtaniwaki/bugsnag-ext.svg
[deps-link]:   https://gemnasium.com/dtaniwaki/bugsnag-ext
[cov-image]:   https://coveralls.io/repos/dtaniwaki/bugsnag-ext/badge.png
[cov-link]:    https://coveralls.io/r/dtaniwaki/bugsnag-ext
[gpa-image]:   https://codeclimate.com/github/dtaniwaki/bugsnag-ext.png
[gpa-link]:    https://codeclimate.com/github/dtaniwaki/bugsnag-ext

