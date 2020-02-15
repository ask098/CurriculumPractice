class ExperiencesController < ApplicationController

    def index
        @experiences = Experience.all
    end

    def new
        @experience = Experience.new
        @profile = Profile.find(params[:profile_id])
    end
    
    def show
        @experience = Experience.find(params[:id])
    end
    def create
        @experience = Experience.new(experience_params)
        @experience.user_id = current_user.id
        @experience.profile_id = params[:profile_id]
       
        if @experience.save
            flash[:success] = "Object successfully created"
            redirect_to "/profiles/#{params[:profile_id]}/experiences/#{@experiences.id}"
        else
            redirect_back(fallback_location: "/")
            flash[:alert] = "not created"
           # redirect_to "/"
        end
    end

    private

    def experience_params 
        params.require(:experience).permit(:title, :industry, :start_date, :end_date, :actually, :user_id, :description)
    end

    
end