require "selfer/version"

module Selfer
  def self.included(base)
    base.send(:define_singleton_method, :method_missing) do |method, *args, &block|
      base.new(*args, &block).send(method)
    end
  end
end
