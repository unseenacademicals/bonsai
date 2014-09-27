Rails.application.routes.draw do
    
    root 'welcome#index'
    
    namespace :api do
        resources :users
        resources :employers do
            resources :roles
        end
    end
end
