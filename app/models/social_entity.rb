class SocialEntity < ApplicationRecord
  belongs_to :user
  belongs_to :target_audience
  belongs_to :occupation_area
end
