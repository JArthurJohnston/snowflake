require_relative '../lib/snowflake'

describe 'Controller Annotations' do
  context 'Setting up a GET request endpoint' do
    get('/the-thing')
    def do_the_thing; end

    it 'should have made a request handler' do
      handler = Snowflake.request_handlers.get_for(:GET, '/the-thing')

      expect(handler.method).to eq :GET
      expect(handler.path).to eq '/the-thing'
      expect(handler.action).to eq :do_the_thing
    end
  end

  
end
