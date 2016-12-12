Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  get "users/sign_up", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  get "/users/:id", :controller => "users", :action => "show"
  get "users/delete_user/:id", :controller => "users", :action => "destroy"

  # Routes for the Injury resource:
  # CREATE
  get "/injuries/new", :controller => "injuries", :action => "new"
  post "/create_injury", :controller => "injuries", :action => "create"

  # READ
  get "/injuries", :controller => "injuries", :action => "index"
  get "/injuries/:id", :controller => "injuries", :action => "show"

  # UPDATE
  get "/injuries/:id/edit", :controller => "injuries", :action => "edit"
  post "/update_injury/:id", :controller => "injuries", :action => "update"

  # DELETE
  get "/delete_injury/:id", :controller => "injuries", :action => "destroy"
  #------------------------------

  # Routes for the Diagnosis resource:
  # CREATE
  get "/diagnoses/new", :controller => "diagnoses", :action => "new"
  post "/create_diagnosis", :controller => "diagnoses", :action => "create"

  # READ
  get "/diagnoses", :controller => "diagnoses", :action => "index"
  get "/diagnoses/:id", :controller => "diagnoses", :action => "show"

  # UPDATE
  get "/diagnoses/:id/edit", :controller => "diagnoses", :action => "edit"
  post "/update_diagnosis/:id", :controller => "diagnoses", :action => "update"

  # DELETE
  get "/delete_diagnosis/:id", :controller => "diagnoses", :action => "destroy"
  #------------------------------

  # Routes for the Routine_exercise resource:
  # CREATE
  get "/routine_exercises/new", :controller => "routine_exercises", :action => "new"
  post "/create_routine_exercise", :controller => "routine_exercises", :action => "create"

  # READ
  get "/routine_exercises", :controller => "routine_exercises", :action => "index"
  get "/routine_exercises/:id", :controller => "routine_exercises", :action => "show"

  # UPDATE
  get "/routine_exercises/:id/edit", :controller => "routine_exercises", :action => "edit"
  post "/update_routine_exercise/:id", :controller => "routine_exercises", :action => "update"

  # DELETE
  get "/delete_routine_exercise/:id", :controller => "routine_exercises", :action => "destroy"
  #------------------------------

  # Routes for the Routine resource:
  # CREATE
  get "/routines/new", :controller => "routines", :action => "new"
  post "/create_routine", :controller => "routines", :action => "create"

  # READ
  get "/routines", :controller => "routines", :action => "index"
  get "/routines/:id", :controller => "routines", :action => "show"

  # UPDATE
  get "/routines/:id/edit", :controller => "routines", :action => "edit"
  post "/update_routine/:id", :controller => "routines", :action => "update"

  # DELETE
  get "/delete_routine/:id", :controller => "routines", :action => "destroy"
  #------------------------------

  # Routes for the Exercise resource:
  # CREATE
  get "/exercises/new", :controller => "exercises", :action => "new"
  post "/create_exercise", :controller => "exercises", :action => "create"

  # READ
  get "/exercises", :controller => "exercises", :action => "index"
  get "/exercises/:id", :controller => "exercises", :action => "show"

  # UPDATE
  get "/exercises/:id/edit", :controller => "exercises", :action => "edit"
  post "/update_exercise/:id", :controller => "exercises", :action => "update"

  # DELETE
  get "/delete_exercise/:id", :controller => "exercises", :action => "destroy"
  #------------------------------


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
