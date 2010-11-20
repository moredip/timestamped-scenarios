What?
==
This gem provides custom cucumber formatters which append a test run timestamp to each scenario name as it is generated. a `Timestamped::PrettyFormatter` and `Timestamped::HtmlFormatter` are supplied already, but you can use the `AddsTimestamp` module to dynamically add timestamping to pretty much any Cucumber formatter.

Why?
==
My CI system is set up to record a screen capture movie of each test run. I use these timestamps to easily find a specific scenario's behaviour as recorded in the movie.

How?
==
Install the gem with 
      gem install timestamped-scenarios
and then simply ask cucumber to use the custom formatters with
      --format 'Timestamped::HtmlFormatter'
      --format 'Timestamped::PrettyFormatter'

You can also configure cucumber to use the formatters in your rake cucumber task, or by using a cucumber.yml config file. Check out the cucumber.yml file in the example directory to see how this is done.

You can create additional Formatter subclasses as required by using the `Timestamped::AddsTimestamp#formatter_with_timestamped_scenario_names` method.

Credits
==
Many thanks to Caleb Clausen for his metaprogramming wizardry, which cleaned up my implementation of `AddsTimestamp` greatly.
