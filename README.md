# middleman-hatenastar

[![Build Status](https://travis-ci.org/unasuke/middleman-hatenastar.svg?branch=master)](https://travis-ci.org/unasuke/middleman-hatenastar)

middleman-hatenastar is a hatenastar extension for Middleman.


## Usage
### 1. bundle install

```ruby
# Gemfile
source 'https://rubygems.org'

gem 'middleman', '>= 4.0.0'
gem 'middleman-hatenastar'
```

and run `bundle install`

### 2. get your hatenastar token

See also → [はてなスターをブログに貼り付ける - はてなスター日記](http://d.hatena.ne.jp/hatenastar/20070707/1184453490)

### 3. activate hatenastar extension and setting it

```ruby
# your middleman config.rb
activate :hatenastar,
  token: 'your token',
  uri: 'h3 a',
  title: 'h3',
  container: 'h3',
  entry_node: 'div.section'
```

### 4. invoke hatenastar_tag in your layout

```slim
doctype html
html
  head
    = hatenastar_tag
```

You can overwrite setting like this.

```slim
doctype html
html
  head
    = hatenastar_tag(uri: 'h4 a', entry_node: 'div.another-section')
```

### 5. build middleman site!

```shell
$ bundle exec middleman build
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/unasuke/middleman-hatenastar.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Reference

- [はてなスターをブログに設置するには - はてなスター日記](http://d.hatena.ne.jp/hatenastar/20070707)
