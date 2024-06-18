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

  def create
    @photo = Photo.new
    @photo.image = params.fetch("entered_image")
    @photo.caption = params.fetch("entered_caption")
    the_userid = params.fetch("entered_ownerID")
    # @user_id = User.where({:id => the_userid}).first
    @photo.owner_id = the_userid

    if @photo.valid?
      @photo.save
      redirect_to("/photos/#{@photo.id}", { :notice => "Photo created successfully." })
    else
      redirect_to("/users/#{@photo.id}", { :notice => "Photo failed to create successfully." })
    end
  end
end
