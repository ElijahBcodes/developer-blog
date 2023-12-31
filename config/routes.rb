Rails.application.routes.draw do
  # resources :blogs
  root 'blogs#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #Index route 
  get 'blogs' => 'blog#index', as: 'blogs'
  #Create route 
  post 'blogs' => 'blog#create' 
  #New route  
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  #Show route 
  get 'blogs/:id' => 'blog#show', as: 'blog'
  #Delete route 

  # Defines the root path route ("/")
  # root "articles#index"
end
