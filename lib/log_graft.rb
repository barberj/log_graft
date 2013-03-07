require 'logger'

module LogGraft
  attr_writer :logger

  def logger
    defined?(@logger) ? @logger : self.class.logger
  end

  module ClassMethods
    def logger=(logger)
      @logger = logger
    end

    def logger
      @logger ||= Logger.new(STDERR)
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end
