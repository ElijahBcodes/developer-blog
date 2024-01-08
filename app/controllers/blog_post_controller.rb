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
        if @blog_post.valid?
            redirect_to blog_posts_path
        else 
            redirect_to new_blog_post_path
    end
end
    

    def destroy 
        @blog_post = BlogPost.find(params[:id])
        @blog_post.destroy
            redirect_to blog_posts_path
    end

    def blog_post_params
        params.require(:blog_post).permit(:title, :content)
      end 

end
