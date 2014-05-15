Rxngif::Application.routes.draw do
  ## C ##
  get("/new_picture_form", { :controller => "pictures", :action => "new" })
  get("/create_picture", { :controller => "pictures", :action => "create" })

  ## R ##
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  get("/all_pictures", { :controller => "pictures", :action => "index" })

  ## U ##
  get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
  get("/update_picture/:id", { :controller => "pictures", :action => "update" })

  ## D ##
  get("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })
end
