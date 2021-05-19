class UserController < ApplicationController
  def signup
    @user = User.create
  end

  def create
    # if params[:images].present?
    @user.images.attach(user_id, params[:images])
    flash[:success] = "Image has been uploaded!"
    redirect_to user_url
    # else 
    #   user.images.attach(user_id, '../public/images/default .jpg' )
  end
end
