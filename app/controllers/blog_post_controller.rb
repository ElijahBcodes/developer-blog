class BlogPostController < ApplicationController
    def index 
        @blog_posts = BlogPost.all
    end

    def show 
        @blog_post =BlogPost.find(params[:id])
    end

    def new 
        @blog_post = BlogPost.new
    end

    def create 
        @blog_post = BlogPost.create(blog_post_params)
    end

    private 
    def blog_post_params
        params.require(:blog_post).permit(:title, :content)
    end
end
