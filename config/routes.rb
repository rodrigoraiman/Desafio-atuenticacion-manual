Rails.application.routes.draw do
 
  get 'new_user/new'
  post 'new_user/create'
  resources :users, only: [:new, :create, :show] 

  get 'users/new'
  get 'users/create'
  get 'users/show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
