class ProfilesController < ApplicationController

    def index
        @profiles = Profile.all
    end

    def new
        @profile = Profile.new
    end
    
    def show
        @profile = Profile.find(params[:id])
    end
    def create
        @profile = current_user.profiles.new

        if @profile.save
            flash[:success] = "Object successfully created"
        else
            render :new
        end
    end

    def destroy
        @profile = Profile.find(params[:id])
        if @profile.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to "/profiles"
        else
            flash[:error] = 'Something went wrong'
            redirect_to "/profiles"
        end
    end

    def edit
        @profile = Profile.find(params[:id])
    end
    
    

    private

    def profile_paramsjoim 
        params.require(:profile).permit(:user_id)
    end

    
end