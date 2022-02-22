require_relative './initalization/snowflake_setup'

module Snowflake
  
  class SnowflakeApplication
    def call(env)
      req = Rack::Request.new(env)
      # p 'BODY: ' + req.body.read

      
      [200, { 'Content-Type' => 'text/html' }, ['Hello World']]
    rescue StandardError => e
      [500, { 'Content-Type' => 'text/html' }, ['something went wrong', e.message]]
    end
  end
end
