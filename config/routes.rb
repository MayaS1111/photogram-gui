Rails.application.routes.draw do
  get("/", {controller: "users" , action: "userList"})
end
