module Birthdayreplies
  class Validator
    def self.validate_auth_token(args)
      if args.class == String
        true
      else
        false
      end
    end
    def self.validate_keywords(args)
      if args.class == Array
        args.each do |arg|
          if arg.class != String
            return false
          end
        end
        return true
      else
        return false
      end
    end
    def self.validate_options(args)
      if args.class == Hash && args[:auth_token] && args[:keywords]
        true
      else
        false
      end
    end
    end # End class
end # End module
