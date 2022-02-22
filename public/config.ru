require 'json'

class SnowflakeApplication
  def call(env)
    req = Rack::Request.new(env)

    p req.request_method
    p req.url
    p req.path_info
    p req.content_type
    # p req.query_string
    p req.params # Query params
    body = req.body.read
    p 'BODY: ' + body

    p JSON.parse(body)

    [200, { 'Content-Type' => 'text/html' }, ['Hello World']]
  rescue StandardError => e
    [500, { 'Content-Type' => 'text/html' }, ['something went wrong', e.message]]
  end
end

run SnowflakeApplication.new
