require_relative '../requests/handler_map'

module Snowflake
  @handler_map = HandlerMap.new

  def self.request_handlers
    return @handler_map
  end
end
