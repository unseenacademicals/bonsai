class RolesController < ApplicationController
    def index
        @employer = Employer.find(params[:employer_id])
        @roles = @employer.roles
    end
    
    def create
        @employer = Employer.find(params[:employer_id])
        @role = @employer.roles.create(role_params)
        if (@role.save)
            redirect_to employer_role_path(@employer, @role)
        else
            render "error"
        end
    end
    
    def show
        redirect_to employer_path(params[:employer_id])
    end
    
    def edit
        @employer = Employer.find(params[:employer_id])
        @role = Role.find(params[:id])
    end
    
    def update
        @employer = Employer.find(params[:employer_id])
        @role = Role.find(params[:id])
        
        if(@role.update(role_params))
            redirect_to employer_role_path(@employer, @role)
        else
            render "error"
        end
    end
    
    def destroy
        @role = Role.find(params[:id])
        @role.destroy
        
        redirect_to employer_path(params[:employer_id])
    end
    
    private
        
    def role_params
        params.require(:role).permit(:name, badges: [])
    end
end
