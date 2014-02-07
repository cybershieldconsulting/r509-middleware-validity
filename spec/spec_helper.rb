require 'simplecov'
SimpleCov.start
begin
  require 'coveralls'
  Coveralls.wear!
rescue LoadError
end

$:.unshift File.expand_path("../../lib", __FILE__)
$:.unshift File.expand_path("../", __FILE__)
require 'rubygems'
require 'fixtures'
require 'rspec'
require 'rack/test'
require 'r509/middleware/validity'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end
