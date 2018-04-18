class Api::V3::SocialEntitiesController < Api::V3::BaseController

    before_action :authenticate_user!
    
    def index
        social_entities = current_user.social_entities.ransack(params[:q]).result
        render json: social_entities, status: 200
    end
    
    def show
        social_entity = current_user.social_entities.find(params[:id])
        render json: social_entity, status: 200
    end

    def create
        social_entity = current_user.social_entities.build(social_entity_params)
        
        if social_entity.save
            render json: social_entity, status: 201
        else
            byebug
            render json: { errors: social_entity.errors }, status: 422
        end 
    end

    private
    def social_entity_params
        params.require(:social_entity).permit(:name, :about_us, :phone_number, :mobile_number, 
                                              :email_contact, :site, :address, :target_audience_id, 
                                              :occupation_area_id)

    end
end