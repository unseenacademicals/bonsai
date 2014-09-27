class API::UsersController < ApplicationController
    #rescue_from Exception, :with => :error_render

    def index
        render :json => User.all
    end
    
    def create
        @user = User.create(user_params)
        if (@user.save)
            redirect_to @user
        else
            render :json => {:error => "User failed to save."}
        end
    end
    
    def show
        @user = User.find(params[:id])
        render :json => @user
    end
    
    def update
        @user = User.find(params[:id])
        
        if(@user.update(user_params))
            redirect_to @user
        else
            render :json => {:error => "User failed to update"}
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        
        redirect_to users_path
    end
    
    private
        
    def user_params
        params.require(:user).permit(:acclaim_id, :latitude, :longitude)
    end

    def error_render
        render :json => { :error => "Something bad happened. Have fun debugging!" }
    end
end