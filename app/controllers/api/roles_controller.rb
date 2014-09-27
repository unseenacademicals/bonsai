class API::RolesController < ApplicationController
    #rescue_from Exception, :with => :error_render
    skip_before_filter  :verify_authenticity_token

    def index
        @employer = Employer.find(params[:employer_id])
        render :json => @employer.roles.all
    end
    
    def create
        @employer = Employer.find(params[:employer_id])
        @role = Role.create(role_params)
        if (@role.save)
            redirect_to @role
        else
            render :json => {:error => "Role failed to save."}
        end
    end
    
    def show
        @role = Role.find(params[:id])
        render :json => @role
    end
    
    def update
        @role = Role.find(params[:id])
        
        if(@role.update(role_params))
            redirect_to @role
        else
            render :json => {:error => "Role failed to update"}
        end
    end
    
    def destroy
        @role = Role.find(params[:id])
        @role.destroy
        
        redirect_to api_employer_roles_path(Employer.find(:employer_id))
    end
    
    private
        
    def role_params
        params.require(:role).permit(:name, :badges)
    end

    def error_render
        render :json => { :error => "Something bad happened. Have fun debugging!" }
    end
end