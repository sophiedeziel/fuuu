require 'spec_helper'

describe Fuuu do
  class SampleClass
    include Fuuu
  end


  subject { SampleClass.new }

  it 'has a version number' do
    expect(Fuuu::VERSION).not_to be nil
  end

  it "respond to fuuu with meaningful number of 'u's" do
    42.times do |i|
      method_name = "f" + ("u" * (i + 1))
      expect(subject).to respond_to(method_name)
    end
  end

  it "opens stack overflow on exception throwing block" do
    expect(Launchy).to receive(:open).with("http://stackoverflow.com/search?q=[ruby]\"undefined method `call' for nil:NilClass\"")
    subject.fuuu { nil.call }
  end

  it "provides a global method" do
    expect(Launchy).to receive(:open).with("http://stackoverflow.com/search?q=[ruby]\"undefined method `call' for nil:NilClass\"")
    module SampleModule
      include Fuuu
      fuuuuuuu { nil.call }
    end
  end

  it "provides a module method" do
    expect(Launchy).to receive(:open).with("http://stackoverflow.com/search?q=[ruby]\"undefined method `call' for nil:NilClass\"")
    fuuuuuuu { nil.call }
  end

  it "does nothing when there is no error" do
    expect(Launchy).not_to receive(:open)
    fuuuuuuu { var = "foo" }
  end

  it "does not intefere with other missing methods" do
    expect { missing_method }.to raise_error(NameError)
  end

end

