require 'birthdayreplies/version'
require 'birthdayreplies/validator'
require 'koala'

module Birthdayreplies
  class Birthdayreplies
    attr_accessor :auth_token, :keywords
    # Contructor
    def initialize(options={})
      puts Validator.validate_options(options)
    end
  end # End class
end   # End module
