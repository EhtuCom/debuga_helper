require 'debuga_helper/version'
require 'debuga_helper/railtie' if defined?(Rails)

# A helper module for debugging purposes in Rails applications.
module DebugHelper
  # Prints a debug message with caller information.
  # @param msg [String] The message to print.
  # @param title [String, nil] Optional title for the debug output.
  # @param level [String] The logging level. One of 'debug', 'warning', 'notice', or 'all'. Defaults to 'debug'.
  # @return [void]
  def debuga(msg, title = nil, level = 'debug')
    if(title)
      title = "T: #{"#{title}".bold}"
    else
      title = ''
    end
    caller_msg = "\n🔽🔽🔽\n> Caller: #{caller_locations(1,1)[0].label} :::"
    if title.present?
      caller_msg += "\n#{title}"
    end
    print_it(caller_msg, level)
    print_it("#{msg}\n🔼🔼🔼\n", level)
  end

  # Prints a shiny title for debugging.
  # @param title [String, nil] The title to display.
  # @param level [String] The logging level. One of 'debug', 'warning', 'notice', or 'all'. Defaults to 'debug'.
  # @return [void]
  def debuga_shinny(title = nil, level = 'debug')
    print_it("*****************************************************", level)
    print_it("*****************************************************", level)
    print_it("********************* #{"#{title}".bold}", level)
    print_it("*****************************************************", level)
    print_it("*****************************************************", level)
  end

  private

  # Private method to handle printing based on level with colorization.
  # @param msg [String] The message to print.
  # @param level [String] The level ('debug', 'warning', 'notice', or 'all').
  # @return [void]
  def print_it(msg, level = 'debug')
    color = case level
    when 'debug' then :blue
    when 'warning' then :yellow
    when 'notice' then :green
    else :white
    end
    colored_msg = msg.colorize(color)
    levels_map = {
      'debug' => :debug,
      'warning' => :warn,
      'notice' => :info
    }
    if levels_map[level]
      Rails.logger.send(levels_map[level], colored_msg)
    elsif level == 'all'
      puts(colored_msg)
    end
  end
end
