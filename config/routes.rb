Rails.application.routes.draw do
  get 'render/index'
 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
   # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'blog_posts' => 'blog_post#index', as: 'blog_posts'
  get 'blog_posts/new' => 'blog_post#new', as: 'new_blog_post'
  get 'blog_posts/:id/edit' => 'blog_post#edit', as: 'edit_blog'
  get 'blog_posts/:id' => 'blog_post#show', as: 'blog_post'
  post 'blog_posts' => 'blog_post#create'
  delete 'blog_posts/:id' => 'blog_post#destroy', as: 'delete_blog'
  patch 'blog_posts/:id' => 'blog_post#update'
  
  root "render#index"



end
