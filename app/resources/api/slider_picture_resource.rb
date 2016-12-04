class Api::SliderPictureResource < JSONAPI::Resource
  attributes :title, :picture
  has_one :website
end
