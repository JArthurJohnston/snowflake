module Snowflake
  class HandlerMap
    def initialize
      @map = {}
    end

    def add(request_handler)
      @map[handler_key(request_handler.method, request_handler.path)] = request_handler
    end

    def get_for(method, path)
      return @map[handler_key(method, path)]
    end

    private

    def handler_key(method, path)
      return "#{method}:#{path}"
    end
  end
end
