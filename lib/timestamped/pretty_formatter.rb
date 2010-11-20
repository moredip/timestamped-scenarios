require 'timestamped/adds_timestamp'

require 'cucumber/formatter/pretty'
module Timestamped
  PrettyFormatter = AddsTimestamp.formatter_with_timestamped_scenario_names(Cucumber::Formatter::Pretty)
end

