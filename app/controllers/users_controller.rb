class UsersController < ApplicationController
  def index
    @users = User.all.order({:username => :asc})
    render({template: "user_displays/index"})
  end

  def show
    the_username = params.fetch("path_username")
    @user = User.where({:username => "the_username"}).at(0)
    render({template: "user_displays/show"})
  end

  def create
    @the_user = User.new
    @the_user.username = params.fetch("entered_name")
    
    @the_user.save


    if @the_user.valid?
      @the_user.save
      redirect_to("/users/#{@the_user.username}", { :notice => "User created successfully." })
    else
      redirect_to("/users/#{@the_user.username}", { :notice => "User failed to create successfully." })
    end
  end

  # def update
  #   @user = User.where({:username => "path_username"}).first
    
  #   redirect_to("/users/#{@user.username}")
  # end

  # def destroy
  #   @user = User.where({:username => "path_username"}).first
    
  #   redirect_to("/users/#{@user.username}")
  # end
end
