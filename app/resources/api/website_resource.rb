module Api
  # app/resources/api/website_resource.rb
  class WebsiteResource < JSONAPI::Resource
    attribute :name
    has_one :user
  end
end
