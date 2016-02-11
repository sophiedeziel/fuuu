require "fuuu/version"
require 'launchy'

module Fuuu

  METHOD_PATTERN = /^f[u]+$/

  def self.respond_to?(method_name, include_private = false)
    super || matches_fuuu?(method_name)
  end

  def self.method_missing(method_name, *args, &block)
    if matches_fuuu?(method_name)
      begin
        block.call(*args)
      rescue => e
        Launchy.open("http://stackoverflow.com/search?q=[ruby]\"#{e.message}\"")
      end
    else
      super
    end
  end

  private

  def self.matches_fuuu?(string)
    METHOD_PATTERN =~ string
  end
end

def method_missing(method)
  if Fuuu.respond_to?(method)
    Fuuu.send(method)
  else
    super(method)
  end
end

