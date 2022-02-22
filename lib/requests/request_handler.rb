require_relative './request_context'

module Snowflake
  class RequestHandler
    attr_reader :path, :method, :action

    def initialize(path, http_method, action)
      @path = path
      @method = http_method
      @action = action
    end

    def handle(http_request)
      # RequestContext.new.send(action, http_request)
    end
  end
end
