require_relative '../lib/requests/handler_map'
require_relative '../lib/requests/request_handler'

describe Snowflake::HandlerMap do
  context 'adding a handler' do
    it 'should be saved in the map' do
      handler = Snowflake::RequestHandler.new('/thing', :GET, :my_method)
      map = Snowflake::HandlerMap.new

      map.add(handler)

      expect(map.get_for(:GET, '/thing')).to eq handler
      expect(map.get_for('GET', '/thing')).to eq handler
    end
  end
end
