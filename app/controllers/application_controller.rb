class ApplicationController < ActionController::Base
  helper_method :posts_present?
  
  def posts_present?
    @posts.present?   
  end
end
