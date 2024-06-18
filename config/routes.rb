Rails.application.routes.draw do
  get("/", {controller: "users" , action: "index"})
  get("/users", {controller: "users" , action: "index"})
  get("/users/:path_username", {controller: "users" , action: "show"})
  post("/insert_user", {controller: "users" , action: "create"})
  get("/modify_user/:path_username", {controller: "users" , action: "update"})

  get("/photos", {controller: "photos" , action: "index"})
  get("/photos/:path_id", {controller: "photos" , action: "show"})
  post("/insert_photo", {controller: "photos" , action: "create"})
  get("/modify_photo/:path_id", {controller: "photos" , action: "update"})
end
