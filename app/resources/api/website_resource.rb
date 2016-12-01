module Api
  # app/resources/api/website_resource.rb
  class WebsiteResource < JSONAPI::Resource
    attribute :name
    has_one :user
    has_many :contacts
    has_many :slider_pictures
  end
end
