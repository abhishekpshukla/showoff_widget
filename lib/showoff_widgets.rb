require "showoff_widgets/version"

module ShowoffWidgets
  class Error < StandardError; end
  # Your code goes here...

  class Client
	  class << self

	  	attr_reader :config, :instance

	  	def configure(&block)
	  		@config = OpenStruct.new
	  		block.call @config
	  	end

	  	def instance
	        @instance ||= ShowoffWidgets.new @config
	      end
	  end
	end
end
