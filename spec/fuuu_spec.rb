require 'spec_helper'

describe Fuuu do
  it 'has a version number' do
    expect(Fuuu::VERSION).not_to be nil
  end

  it "respond to fuuu with any number of 'u's" do
    10.times do |i|
      method_name = "f" + ("u" * (i + 1))
      expect(Fuuu).to respond_to(method_name)
    end
  end

  it "opens stack overflow on exception throwing block" do
    expect(Launchy).to receive(:open).with("http://stackoverflow.com/search?q=[ruby]\"undefined method `call' for nil:NilClass\"")
    Fuuu.fuuu { nil.call }
  end

  it "ignores invalid fuuuus" do
    expect{ Fuuu.ffuuuhh }.to raise_error(NoMethodError)
  end

  it "provides a global method" do
    expect(Launchy).to receive(:open).with("http://stackoverflow.com/search?q=[ruby]\"undefined method `call' for nil:NilClass\"")
    fuuuuuuu { nil.call }
  end

  it "does not intefere with other missing methods" do
    expect { missing_method }.to raise_error(NameError)
  end
end

