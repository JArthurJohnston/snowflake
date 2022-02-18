module Controller
  # needs to be extended into a class
  @@annotation = nil
  @@current_path = nil

  def method_added(method_name)
    super
    p method_name.to_s + ' Added'
    if @@annotation
      puts 'annotated ', method_name, ' with ', @@annotation.name
      @@annotation = nil
    end

    puts method_name
  end

  module Actions
    def controller(options); end

    def get(_options)
      puts 'GETTING'
    end

    def post(options); end

    def put(options); end

    def delete(options); end
  end
end
