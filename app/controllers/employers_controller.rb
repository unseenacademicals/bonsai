class EmployersController < ApplicationController
   
    def index
        @employers = Employer.all
    end
    
    def new
        @employer = Employer.new
    end
    
    def edit
        @employer = Employer.find(params[:id])
    end
    
    def create
        @employer = Employer.create(employer_params)
        if (@employer.save)
            redirect_to employer_path(@employer)
        else
            render "error"
        end
    end
    
    def show
        @employer = Employer.find(params[:id])
    end
    
    def update
        @employer = Employer.find(params[:id])
        
        if(@employer.update(employer_params))
            redirect_to employer_path(@employer)
        else
            render "error"
        end
    end
    
    def destroy
        @employer = Employer.find(params[:id])
        @employer.destroy
        
        redirect_to employers_path
    end
    
    private
        
    def employer_params
        params.require(:employer).permit(:name, :latitude, :longitude, :roles)
    end
end
