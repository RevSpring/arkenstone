# Raised if parameters are not sent to build an Arkenstone document
class NoParameterError < StandardError

  class << self
    def default_message
      'Parameters/Options required to build this document.'
    end
  end
end
