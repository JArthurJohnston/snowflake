require_relative '../lib/requests/request_handler'

describe Snowflake::RequestHandler do
  context 'initializing' do
    it 'Should have all its fields' do
      handler = Snowflake::RequestHandler.new('/thing', :GET, :my_method)

      expect(handler.method).to eq :GET
      expect(handler.path).to eq '/thing'
      expect(handler.action).to eq :my_method
    end
  end
end
