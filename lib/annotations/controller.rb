require_relative '../requests/request_handler'
require_relative '../requests/request_handler_factory'

module Snowflake
  module Controller
    CONTROLLER_ANNOTATION_PROC = proc do |method_name|
      p "Added #{method_name}"
      handler = RequestHandlerFactory.instance
        .action(method_name)
        .build
      Snowflake.request_handlers.add(handler)
      Controller.remove_annotation_handler
    end

    def self.init_annotation_handler
      Object.define_singleton_method(:method_added, CONTROLLER_ANNOTATION_PROC)
    end

    def self.remove_annotation_handler
      Object.singleton_class.remove_method(:method_added)
    end

    def self.basic_endpoint_setup(method, path)
      Snowflake::Controller.init_annotation_handler
      Snowflake::RequestHandlerFactory.instance
        .method(method)
        .path(path)
    end
  end
end

def get(path)
  return Snowflake::Controller.basic_endpoint_setup(:GET, path)
end

def post(path)
  return Snowflake::Controller.basic_endpoint_setup(:POST, path)
end

def put(path)
  return Snowflake::Controller.basic_endpoint_setup(:PUT, path)
end

def delete(path)
  return Snowflake::Controller.basic_endpoint_setup(:DELETE, path)
end
