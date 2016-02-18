require 'simplecov'
SimpleCov.minimum_coverage(100)
SimpleCov.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'fuuu'
