Rails.application.routes.draw do
 
  get 'blog_posts' => 'blog_post#index', as: 'blog_posts'
  get 'blog_posts/new' => 'blog_post#new', as: 'new_blog_post'
  get 'blog_posts/:id/edit' => 'blog_post#edit', as: 'edit_blog'
  post 'blog_posts' => 'blog_post#create'
  get 'blog_posts/:id' => 'blog_post#show', as: 'blog_post'
  root 'blog_post#index'


end
