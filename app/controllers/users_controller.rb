class UsersController < ApplicationController
  def index
    @users = User.all

    render({template: "user_displays/index"})
  end

  def show
    @user = User.where({:id => "path_id"})

    render({template: "user_displays/show"})
  end

  def create
    @user = User.where({:id => "path_id"})
    
    render({template: "user_displays/show"})
  end

  def update
    @users = User.all
    
    render({template: "user_displays/show"})
  end
end
