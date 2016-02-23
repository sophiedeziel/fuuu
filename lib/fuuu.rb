require "fuuu/version"
require 'launchy'

module Fuuu
  def self.included(mod)
    42.times do |i|
      method_name = "f#{("u" * (i + 1))}"

      mod.define_singleton_method(method_name) do |&block|
        Fuuu.fu_call &block
      end

      define_method(method_name) do |&block|
        Fuuu.fu_call &block
      end
    end
  end

  private

  def self.fu_call
    begin
      yield if block_given?
    rescue => e
      Launchy.open("http://stackoverflow.com/search?q=[ruby]\"#{e.message}\"")
    end
  end
end

include Fuuu
