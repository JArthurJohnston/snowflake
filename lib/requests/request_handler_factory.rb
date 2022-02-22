module Snowflake
  class RequestHandlerFactory
    @@instance = nil

    def self.instance()
      unless @@instance
        @@instance = self.new
      end
      return @@instance
    end

    def method(http_method)
      @method = http_method
      self
    end

    def path(uri)
      @path = uri
      self
    end

    def action(method_name_symbol)
      @action = method_name_symbol
      self
    end

    def build
      @@instance = nil
      return RequestHandler.new(@path, @method, @action)
    end
  end
end
