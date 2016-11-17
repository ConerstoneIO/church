module Api
  # app/resources/api/contact_resource.rb
  class ContactResource < JSONAPI::Resource
    attributes :name, :email, :phone
    has_one :church_position
    has_one :website
  end
end
