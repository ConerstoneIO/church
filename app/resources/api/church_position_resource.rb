module Api
  # app/resources/api/church_position_resource.rb
  class ChurchPositionResource < JSONAPI::Resource
    attribute :title
    has_one :user
    has_many :contacts
  end
end
