class FrontsController < ApplicationController

    def index
        @tweets =Tweet.all.page(params[:page]).per(3)
        @blogs = Blog.all
    end
end
