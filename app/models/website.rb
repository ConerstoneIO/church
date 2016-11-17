# app/models/website.rb
class Website < ApplicationRecord
  belongs_to :user
  has_many :contacts
  validates :user, presence: true
end
