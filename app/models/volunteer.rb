class Volunteer < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :address, :user_id
end
