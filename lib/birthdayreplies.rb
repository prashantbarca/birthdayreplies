require 'birthdayreplies/version'
require 'birthdayreplies/validator'
require 'koala'

module Birthdayreplies
  class Birthdayreplies
    attr_accessor :auth_token, :keywords
    # Contructor
    def initialize(options={})
      unless Validator.validate_options(options)
        puts "Try again with options correctly."
        exit
      end
      @graph = Koala::Facebook::API.new(options[:auth_token])
      posts = @graph.get_connection('me', 'feed', :limit => 100)
      posts.each do |post|
        puts p['message']
      end
    end
  end # End class
end   # End module
