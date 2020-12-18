class SupportsController < ApplicationController

    before_action :authenticate_user!

    def create
        blog = Blog.find(params[:blog_id])
        support = blog.supports.new(support_params) 
        support.user_id = current_user.id
      if support.save
        flash[:success] = "コメントしました"
        redirect_back(fallback_location: root_path)
      else
        flash[:success] = "コメントできませんでした"
        redirect_back(fallback_location: root_path)
      end
    end
  
    private
  
      def support_params
        params.require(:support).permit(:content)
      end

end
