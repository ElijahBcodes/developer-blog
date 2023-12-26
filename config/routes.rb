Rails.application.routes.draw do
  # resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'blogs' => 'blog#index', as: 'blogs'
  post 'blogs' => 'blog#create' 
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  # Defines the root path route ("/")
  # root "articles#index"
end
