Rails.application.routes.draw do
  resources :loans
  resources :equipment
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
