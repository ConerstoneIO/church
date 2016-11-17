module Api
  # app/resources/api/user_resource.rb
  class UserResource < JSONAPI::Resource
    attributes :email
    has_many :websites
    has_many :church_positions
  end
end
