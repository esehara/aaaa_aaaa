# AaaaAaaa

example string generator for web design, example "あああああああああ".


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aaaa_aaaa'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aaaa_aaaa

## Usage

```ruby
AaaaAaaa::Text.new("あ", step=10) * 15).to_s
# => "ああああああああ１０あああああ"
AaaaAaaa::Text.new("あ", step=10, prefix="文章") * 15).to_s
# => "文章ああああああ１０文章あああ"
(AaaaAaaa::Text.new("あ", step=10, production: true) * 15).to_s
# raise Error !! -> AaaaAaaa::NotUseAaaaAaaaError
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/aaaa_aaaa/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
