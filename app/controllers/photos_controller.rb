class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order({:created_at => :desc})
    render({template: "photo_displays/index"})
  end

  def show
    the_id = params.fetch("path_id")
    @photo = Photo.where({:id => the_id}).first
    
    render({template: "photo_displays/show"})
  end

  # def create
  #   @user = User.new
  #   @user.username = params.fetch("entered_name")

  #   if @user.valid?
  #     @user.save
  #     redirect_to("/users/#{@user.username}", { :notice => "User created successfully." })
  #   else
  #     redirect_to("/users/#{@user.username}", { :notice => "User failed to create successfully." })
  #   end
  # end
end
