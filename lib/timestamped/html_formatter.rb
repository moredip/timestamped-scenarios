require 'timestamped/adds_timestamp'

require 'cucumber/formatter/html'
module Timestamped
  HtmlFormatter = AddsTimestamp.formatter_with_timestamped_scenario_names(Cucumber::Formatter::Html)
end

