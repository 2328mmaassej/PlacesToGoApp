PlacesToGoApp::Application.routes.draw do
  resources :places
 
  root :to => "Places#index"

  # Create
  get "/places/new" => "Places#new", :as => "new_place"
  post "/places" => "Places#create", :as => "place"

  # Read
  get("/places", {:controller => "Places", :action => "index", :as => "places"})

  # The :as => "pictures" option causes Rails to define the following method:
  # def pictures_url
      # return "http://localhost:3000/pictures"
  # end

  get "/places/:id" => "Places#show", :as => "place"

  # The :as => "picture" option causes Rails to define the following method:
  # def picture_url(id_number)
  #     return "http://localhost:3000/pictures/#{id_number}"
  # end


  # Update
  get "/places/:id/edit" => "Places#edit", :as => "edit_place"
  put "/places/:id" => "Places#update", :as => "place"

  # Destroy
  delete "/places/:id" => "Places#delete", :as => "place"

end
