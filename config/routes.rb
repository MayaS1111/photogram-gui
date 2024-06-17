Rails.application.routes.draw do
  get("/", {controller: "users" , action: "index"})
  get("/users", {controller: "users" , action: "index"})
  get("/users/:path_username", {controller: "users" , action: "show"})

  #post("/insert_user", {controller: "users" , action: ""})
  post("/insert_user", {controller: "users" , action: "create"})
  get("/modify_user/:path_username", {controller: "users" , action: "update"})
  get("/destroy_user/:path_username", {controller: "users" , action: "destroy"})
end
