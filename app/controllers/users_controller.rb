class UsersController < ApplicationController
  def userList
    render({template: "user_displays/index"})
  end
end
