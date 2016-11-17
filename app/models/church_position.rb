# app/models/church_position.rb
class ChurchPosition < ApplicationRecord
  belongs_to :user
  has_many :contacts
end
