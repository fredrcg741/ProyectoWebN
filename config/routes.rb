Rails.application.routes.draw do
  resources :users
  
  root 'logins#index'
  get 'logins/index'
  get 'logins/new_password'
  get 'reviews/index'
  get 'reviews/manager_review'


  
  get 'users/index'
  get 'users/new'
  post "users/create" => "users#create"
  get 'users/show'
  get "users/:id/edit" => "users#edit"
  put "users/:id" => "users#update"
  get "users/:id/delete" => "users#delete"
  get "users/:id/destroy" => "users#destroy"

  get 'digitals/index'
  get 'digitals/new'
  post "digitals/create" => "digitals#create"
  get 'digitals/show'
  get "digitals/:id/edit" => "digitals#edit"
  put "digitals/:id" => "digitals#update"
  get "digitals/:id/delete" => "digitals#delete"
  get "digitals/:id/destroy" => "digitals#destroy"

  get 'indizacions/index'

  get 'indizacions/show'
  get "indizacions/:id/edit" => "indizacions#edit"
  put "indizacions/:id" => "indizacions#update"

  get 'indizacions/new_deskpart'
  get 'indizacions/manager_deskpart'
  get 'indizacions/new_actdirect'
  get 'indizacions/manager_actdirect'


  get 'pages/index'
  get 'pages/about_us'
  get 'pages/faq'
  get 'pages/tos'
  get 'pages/contact_us'
  get 'logins/logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "logins" => "logins#login"

end
