class BlogsController < ApplicationController

    before_action :authenticate_user!

    def index
        @blogs = Blog.all
    end
    
    def new
        @blog = Blog.new
    end
    
    
    def create
        blog = Blog.new(blog_parameter)
        blog.user_id = current_user.id
        
        if blog.save
            flash[:notice] = '投稿が完了しました。'
            redirect_to :action => "index"
        else 
            redirect_to :action => "new"
        end
    end

    def show
        @blog = Blog.find(params[:id])
        @supports = @blog.supports
        @support = Support.new
    end
    
    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        redirect_to blogs_path, notice:"削除しました"
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end
    
    def update
        blog = Blog.find(params[:id])
        if blog.update(blog_parameter)
            redirect_to :action => "show", :id => blog.id
        else
            redirect_to :action => "new"
        end
    end
    
    private
    
    def blog_parameter
        params.require(:blog).permit(:name, :part, :training, :about, :start_time)
    end
end
