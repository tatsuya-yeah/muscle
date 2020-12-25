class TweetsController < ApplicationController

    before_action :authenticate_user!

    def index
        @tweets =Tweet.all.order(created_at: :desc) 
        @all_ranks = Tweet.find(Like.group(:tweet_id).order('count(tweet_id) desc').limit(10).pluck(:tweet_id))
    end

    def new 
        @tweet = Tweet.new
        @tweets =Tweet.all.order(created_at: :desc) 
        @my_tweets = @tweets.select { |tweet| tweet.user_id == current_user.id } 
    end

    def create
        tweet = Tweet.new(tweet_params)
        @tweet = Tweet.new(tweet_params)
        url = params[:tweet][:youtube_url]
        url = url.last(11)
        @tweet.youtube_url = url

        tweet.user_id = current_user.id
        
        if tweet.save
            flash[:notice] = '投稿が完了しました。'
            redirect_to :action => "index"
        else 
            redirect_to :action => "new"
        end
    end

    def show
        @tweet = Tweet.find(params[:id])
        @comments = @tweet.comments
        @comment = Comment.new
    end

    def edit
        @tweet = Tweet.find(params[:id])
      end

    def update
        tweet = Tweet.find(params[:id])
        if tweet.update(tweet_params)
            redirect_to :action => "show", :id => tweet.id
        else
            redirect_to :action => "new"
        end
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to action: :index
      end


    private
    def tweet_params
        params.require(:tweet).permit(:name, :part, :training, :about, :image, :youtube_url,:title)
    end

   

end
