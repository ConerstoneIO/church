module Api
  # app/resources/api/user_resource.rb
  class UserResource < JSONAPI::Resource
    attributes :email
  end
end
