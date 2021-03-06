module Underarmour
  class UserProfilePhoto
    
    # https://developer.underarmour.com/docs/v71_User_Profile_Photo/

    attr_accessor :small, :medium, :large

    def initialize(json)
      decode_user_profile_photo(json)
    end

    private

    def decode_user_profile_photo(json)
      # @TODO: fix this to work with collections
      self.small = json['small']
      self.medium = json['medium']
      self.large = json['large']
      self
    end
  end
end
