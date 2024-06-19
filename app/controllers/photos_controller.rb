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

  def create_photo
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
      redirect_to("/photos/#{@photo.id}", { :notice => "Photo failed to create successfully." })
    end
  end

  def update_photo
    the_id = params.fetch("path_id")
    @photo = Photo.where({:id => the_id}).first
    @photo.image = params.fetch("entered_image2")
    @photo.caption = params.fetch("entered_caption2")

    if @photo.valid?
      @photo.save
      redirect_to("/photos/#{@photo.id}", { :notice => "Photo created successfully." })
    else
      redirect_to("/photos/#{@photo.id}", { :notice => "Photo failed to create successfully." })
    end
  end

  def destroy_photo
    the_id = params.fetch("path_id")
    @photo = Photo.where({:id => the_id}).first

    @photo.destroy
  

    if @photo.valid?
      @photo.save
      redirect_to("/photos", { :notice => "Photo created successfully." })
    else
      redirect_to("/photos", { :notice => "Photo failed to create successfully." })
    end
  end

  def create_comment
    @comment = Comment.new
    @comment.photo_id = params.fetch("entered_photoID")
    @comment.author_id = params.fetch("entered_authorID")
    @comment.body = params.fetch("entered_comment")
    
    @comment.save
    redirect_to("/photos/#{@comment.photo_id}")
  end
end
