FactoryGirl.define do 
    factory :social_entity do

        name { Faker::Lorem.sentence }
        about_us { Faker::Lorem.paragraph }
        phone_number:string
        mobile_number:string
        email_contact:string
        site:string
        address:string
        
        #como no modelo temos o belongs_to para user, o FactoryGirl cria automaticamente um usuário utilizando a associação
        user
        target_audience
        occupation_area
    end 

end 
