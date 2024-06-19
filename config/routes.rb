Rails.application.routes.draw do
  get("/", {controller: "users" , action: "index"})

  get("/users", {controller: "users" , action: "index"})
  get("/users/:path_username", {controller: "users" , action: "show"})
  post("/insert_user", {controller: "users" , action: "create"})
  get("/modify_user/:path_username", {controller: "users" , action: "update"})

  get("/photos", {controller: "photos" , action: "index"})
  get("/photos/:path_id", {controller: "photos" , action: "show"})
  post("/insert_photo", {controller: "photos" , action: "create_photo"})
  get("/modify_photo/:path_id", {controller: "photos" , action: "update_photo"})
  get("/delete_photo/:path_id", {controller: "photos" , action: "destroy_photo"})

  post("/insert_comment", {controller: "photos" , action: "create_comment"})

end
