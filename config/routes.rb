Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do 
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :projects, only: [:create, :show, :index, :update, :edit, :destroy, :search] do    
      resources :steps, only: [:create] 
    end 
    resources :categories, only: [:index, :show]
  end
end
