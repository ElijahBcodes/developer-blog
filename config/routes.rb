Rails.application.routes.draw do
 
  get 'blog_posts' => 'blog_post#index', as: 'blog_posts'
  get 'blog_posts/new' => 'blog_post#new', as: 'new_blog_post'
  get 'blog_posts/:id/edit' => 'blog_post#edit', as: 'edit_blog'
  get 'blog_posts/:id' => 'blog_post#show', as: 'blog_post'
  post 'blog_posts' => 'blog_post#create'
  delete 'blog_posts/:id' => 'blog_post#destroy', as: 'delete_blog'
  patch 'blog_posts/:id' => 'blog_post#update'
  
  root 'blog_post#index'



end
