class API::EmployersController < ApplicationController
    #rescue_from Exception, :with => :error_render

    def index
        render :json => Employer.all
    end
    
    def create
        @employer = Employer.create(employer_params)
        if (@employer.save)
            redirect_to @employer
        else
            render :json => {:error => "Employer failed to save."}
        end
    end
    
    def show
        @employer = Employer.find(params[:id])
        render :json => @employer
    end
    
    def update
        @employer = Employer.find(params[:id])
        
        if(@employer.update(employer_params))
            redirect_to @employer
        else
            render :json => {:error => "Employer failed to update"}
        end
    end
    
    def destroy
        @employer = Employer.find(params[:id])
        @employer.destroy
        
        redirect_to users_path
    end
    
    private
        
    def employer_params
        params.require(:user).permit(:name, :badges, :latitude, :longitude)
    end

    def error_render
        render :json => { :error => "Something bad happened. Have fun debugging!" }
    end
end