class LovesController < ApplicationController

    def create
        love = current_user.loves.create(blog_id: params[:blog_id]) 
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
        love = Love.find_by(blog_id: params[:blog_id], user_id: current_user.id)
        love.destroy
        redirect_back(fallback_location: root_path)
      end
      
end
