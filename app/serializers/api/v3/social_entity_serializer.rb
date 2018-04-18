class Api::V3::SocialEntitySerializer < ActiveModel::Serializer
  attributes :id, :name, :about_us, :phone_number, :mobile_number, :email_contact, 
            :site, :address, :user_id, :target_audience_id, :occupation_area_id

  belongs_to :user
  belongs_to :target_audience
  belongs_to :occupation_area
  
end
