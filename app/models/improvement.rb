class Improvement < ApplicationRecord
  belongs_to :social_entity

  validates_presence_of :title, :short_description, :address, :limit_volunteers, 
                        :start_date, :end_date, :status, :social_entity_id

end
