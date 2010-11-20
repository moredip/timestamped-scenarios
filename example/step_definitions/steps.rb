Given /^I wait (\d+\.?\d*) seconds$/ do |seconds|
  seconds = seconds.to_f
  sleep(seconds)
end
