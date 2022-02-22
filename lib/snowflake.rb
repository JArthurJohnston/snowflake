require_relative './initialization/snowflake_setup'
require_relative './annotations/controller'

IO.foreach('./res/ascii_title.txt') { |block| puts block }
