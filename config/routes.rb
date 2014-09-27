Rails.application.routes.draw do
    
    root 'welcome#index'
    
    namespace :api do
        get '/users/near/:lat/:lng' => 'users#nearby', :lat => /.*/, :lng => /.*/
        resources :users
        get '/employers/near/:lat/:lng' => 'employers#nearby', :lat => /.*/, :lng => /.*/
        resources :employers do
            resources :roles
        end
    end
end
