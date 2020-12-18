class FrontsController < ApplicationController

    def index

    end

    def show
        @tweets =Tweet.all.page(params[:page]).per(3)
        @blogs = Blog.all
        @user = User.find(params[:id])
        @sample = {:weigh_on => :weight}
    end
end
