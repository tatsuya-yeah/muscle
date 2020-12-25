class FrontsController < ApplicationController

    def index

    end

    def show
        @tweets =Tweet.all.page(params[:page]).per(3)
        @blogs = Blog.all.order(created_at: :desc)
        @my_blogs = @blogs.select{ |blog| blog.user_id == current_user.id }
        @user = User.find(params[:id])
        @result = Graph.pluck(:weigh_on, :weight)
    end
end
