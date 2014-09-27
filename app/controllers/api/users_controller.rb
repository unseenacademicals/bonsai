class API::UsersController < ApplicationController
    #rescue_from Exception, :with => :error_render
    skip_before_filter  :verify_authenticity_token
    
    def index
        render :json => User.all
    end
    
    def create
        @user = User.create(user_params)
        if (@user.save)
            redirect_to api_user_path(@user)
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
            render :json => {:success => "Successfully updated user"}
        else
            render :json => {:error => "User failed to update"}
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        
        redirect_to users_path
    end
    
    def acclaim
        @user = User.find_by_acclaim_id(params[:acclaim_id])
        if(@user)
            render :json => @user
        else
            render :json => {:error => "User does not exist"}
        end
    end
    
    def nearby
        lat, lng = params[:lat], params[:lng]
        if lat and lng
            @users = User.nearby(lat.to_f, lng.to_f)
            render :json => @users
        else
            render :json => {:error => "Invalid or missing lat,lng parameters"}
        end
    end
        
    private
        
    def user_params
        params.require(:user).permit(:name, :acclaim_id, :latitude, :longitude)
    end

    def error_render
        render :json => { :error => "Something bad happened. Have fun debugging!" }
    end
end