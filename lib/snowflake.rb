require_relative './annotations/controller'

puts 'Snowflake'

class Object
  extend Controller
end

extend Controller::Actions
