Rails.application.routes.draw do

  devise_for :users
  root to: "companies#index"

  # Routes for the Story resource:
  # CREATE
  # get "/stories/new", :controller => "stories", :action => "new"
  post "/create_story", :controller => "stories", :action => "create"

  # READ
  # get "/stories", :controller => "stories", :action => "index"
  # get "/stories/:id", :controller => "stories", :action => "show"

  # UPDATE
  # get "/stories/:id/edit", :controller => "stories", :action => "edit"
  post "/update_story/:id", :controller => "stories", :action => "update"

  # DELETE
  get "/delete_story/:id", :controller => "stories", :action => "destroy"
  #------------------------------

  # Routes for the Tracking resource:
  # CREATE
  get "/trackings/new", :controller => "trackings", :action => "new"
  post "/create_tracking", :controller => "trackings", :action => "create"

  # READ
  get "/trackings", :controller => "trackings", :action => "index"
  get "/trackings/:id", :controller => "trackings", :action => "show"

  # UPDATE
  get "/trackings/:id/edit", :controller => "trackings", :action => "edit"
  post "/update_tracking/:id", :controller => "trackings", :action => "update"

  # DELETE
  get "/delete_tracking/:id", :controller => "trackings", :action => "destroy"
  #------------------------------

  # Routes for the Company_comment resource:
  # CREATE
  get "/company_comments/new", :controller => "company_comments", :action => "new"
  post "/create_company_comment", :controller => "company_comments", :action => "create"

  # READ
  get "/company_comments", :controller => "company_comments", :action => "index"
  get "/company_comments/:id", :controller => "company_comments", :action => "show"

  # UPDATE
  get "/company_comments/:id/edit", :controller => "company_comments", :action => "edit"
  post "/update_company_comment/:id", :controller => "company_comments", :action => "update"

  # DELETE
  get "/delete_company_comment/:id", :controller => "company_comments", :action => "destroy"
  #------------------------------

  # Routes for the Article resource:
  # CREATE
  get "/articles/new", :controller => "articles", :action => "new"
  post "/create_article", :controller => "articles", :action => "create"

  # READ
  get "/articles", :controller => "articles", :action => "index"
  get "/articles/:id", :controller => "articles", :action => "show"

  # UPDATE
  get "/articles/:id/edit", :controller => "articles", :action => "edit"
  post "/update_article/:id", :controller => "articles", :action => "update"

  # DELETE
  get "/delete_article/:id", :controller => "articles", :action => "destroy"
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get "/contacts/new", :controller => "contacts", :action => "new"
  post "/create_contact", :controller => "contacts", :action => "create"

  # READ
  get "/contacts", :controller => "contacts", :action => "index"
  get "/contacts/:id", :controller => "contacts", :action => "show"

  # UPDATE
  get "/contacts/:id/edit", :controller => "contacts", :action => "edit"
  post "/update_contact/:id", :controller => "contacts", :action => "update"

  # DELETE
  get "/delete_contact/:id", :controller => "contacts", :action => "destroy"
  #------------------------------


  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
