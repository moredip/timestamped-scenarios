# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "timestamped/version"

Gem::Specification.new do |s|
  s.name        = "timestamped-scenarios"
  s.version     = Timestamped::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pete Hodgson"]
  s.email       = ["gems@thepete.net"]
  s.homepage    = "http://rubygems.org/gems/timestamped-scenarios"
  s.summary     = %q{custom cucumber formatters which append timestamps to each scenario's name as it is executed}
  s.description = %q{custom cucumber formatters which append timestamps to each scenario's name as it is executed}

  s.add_dependency "cucumber"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
