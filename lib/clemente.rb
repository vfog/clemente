require 'clemente/client'

module Clemente
	VERSION = "0.0.1"

	class << self

		def client
			@client = Clemente::Client.new
			@client
		end

  private

    def method_missing(method_name, *args, &block)
      return super unless client.respond_to?(method_name)
      client.send(method_name, *args, &block)
    end

	end

end
