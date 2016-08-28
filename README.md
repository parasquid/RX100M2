# RX100M2

The Sony RX 100 M2 has a very limited, but still usable API that is the precursor of the Smart Remote Control API in use by the RX 100 M3 onwards.

This is a very thin api layer to access the remote control capabilities of the camera.

To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'RX100M2', github: "parasquid/RX100M2"
```

And then execute:

    bundle

## Usage

There are example programs in the `examples` folder.

Use `bundler` in order to run them. For the `timelapse` example:

    bundle exec ruby timelapse.rb

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/parasquid/RX100M2.

