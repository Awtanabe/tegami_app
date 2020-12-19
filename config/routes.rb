Rails.application.routes.draw do
  devise_for :users
  resources :letters, only: [:new, :create] do
    collection do 
     post :confirm
     post :hello
    end
  end
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
