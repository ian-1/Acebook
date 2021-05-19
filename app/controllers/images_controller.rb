class ImagesController < ApplicationController
  def index
  end

  def create
    @image = Image.new
  end

  def save
    @image.save
    redirect_to profile_url
  end

end
