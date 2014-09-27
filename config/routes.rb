Rails.application.routes.draw do
    
    root 'welcome#index'
    #get '/newuser' => 'welcome#newuser'
    #get '/newemployer' => 'welcome#newemployer'
    #get '/newemployer/:id/newrole' => 'welcome#newrole'
    
    resources :employers do
        resources :roles
    end
        
    
    namespace :api do
        get '/users/near/:lat/:lng' => 'users#nearby', :lat => /.*/, :lng => /.*/
        get '/users/by-acclaim/:acclaim_id' => 'users#acclaim'
        resources :users
        get '/employers/near/:lat/:lng' => 'employers#nearby', :lat => /.*/, :lng => /.*/
        resources :employers do
            resources :roles
        end
    end
end
