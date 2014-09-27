class WelcomeController < ApplicationController
    def index
    end
    
    def newuser
        @user = User.new
    end
    
    def newemployer
        @employer = Employer.new
    end
    
    def newrole
        @employer = Employer.find(params[:id])
        @role = @employer.roles.new
    end
end
