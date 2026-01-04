# DebugaHelper

A Ruby gem providing debugging helpers for Rails applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'debuga_helper'
```

And then execute:

    $ bundle install

## Usage

Once installed, the helpers are automatically available in your controllers and views.

### debuga(msg, title = nil, level = 'debug')

Prints a debug message with caller information.

- `msg`: The message to print.
- `title`: Optional title.
- `level`: Option logging level ('debug', 'warning', 'notice', 'all').

### debuga_shinny(title = nil, level = 'debug')

Prints a shiny title for debugging.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
