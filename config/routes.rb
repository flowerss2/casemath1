Rails.application.routes.draw do

  devise_for :users

get "/users", :controller => "users", :action => "index"
get "/users/:id", :controller => "users", :action => "show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/", :controller => "lessons", :action => "index"
  # Routes for the Enrollment resource:
  # CREATE
  get "/enrollments/new", :controller => "enrollments", :action => "new"
  post "/create_enrollment", :controller => "enrollments", :action => "create"

  # READ
  get "/enrollments", :controller => "enrollments", :action => "index"
  get "/enrollments/:id", :controller => "enrollments", :action => "show"

  # UPDATE
  get "/enrollments/:id/edit", :controller => "enrollments", :action => "edit"
  post "/update_enrollment/:id", :controller => "enrollments", :action => "update"

  # DELETE
  get "/delete_enrollment/:id", :controller => "enrollments", :action => "destroy"
  #------------------------------

  # Routes for the School resource:
  # CREATE
  get "/schools/new", :controller => "schools", :action => "new"
  post "/create_school", :controller => "schools", :action => "create"

  # READ
  get "/schools", :controller => "schools", :action => "index"
  get "/schools/:id", :controller => "schools", :action => "show"

  # UPDATE
  get "/schools/:id/edit", :controller => "schools", :action => "edit"
  post "/update_school/:id", :controller => "schools", :action => "update"

  # DELETE
  get "/delete_school/:id", :controller => "schools", :action => "destroy"
  #------------------------------

  # Routes for the Suggestion resource:
  # CREATE
  get "/suggestions/new", :controller => "suggestions", :action => "new"
  post "/create_suggestion", :controller => "suggestions", :action => "create"

  # READ
  get "/suggestions", :controller => "suggestions", :action => "index"
  get "/suggestions/:id", :controller => "suggestions", :action => "show"

  # UPDATE
  get "/suggestions/:id/edit", :controller => "suggestions", :action => "edit"
  post "/update_suggestion/:id", :controller => "suggestions", :action => "update"

  # DELETE
  get "/delete_suggestion/:id", :controller => "suggestions", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Quiz_result resource:
  # CREATE
  get "/quiz_results/new", :controller => "quiz_results", :action => "new"
  post "/create_quiz_result", :controller => "quiz_results", :action => "create"

  # READ
  get "/quiz_results", :controller => "quiz_results", :action => "index"
  get "/quiz_results/:id", :controller => "quiz_results", :action => "show"

  # UPDATE
  get "/quiz_results/:id/edit", :controller => "quiz_results", :action => "edit"
  post "/update_quiz_result/:id", :controller => "quiz_results", :action => "update"

  # DELETE
  get "/delete_quiz_result/:id", :controller => "quiz_results", :action => "destroy"
  #------------------------------

  # Routes for the Mini_quiz resource:
  # CREATE
  get "/mini_quizzes/new", :controller => "mini_quizzes", :action => "new"
  post "/create_mini_quiz", :controller => "mini_quizzes", :action => "create"

  # READ
  get "/mini_quizzes", :controller => "mini_quizzes", :action => "index"
  get "/mini_quizzes/:id", :controller => "mini_quizzes", :action => "show"

  # UPDATE
  get "/mini_quizzes/:id/edit", :controller => "mini_quizzes", :action => "edit"
  post "/update_mini_quiz/:id", :controller => "mini_quizzes", :action => "update"

  # DELETE
  get "/delete_mini_quiz/:id", :controller => "mini_quizzes", :action => "destroy"
  #------------------------------

  # Routes for the Resource resource:
  # CREATE
  get "/resources/new", :controller => "resources", :action => "new"
  post "/create_resource", :controller => "resources", :action => "create"

  # READ
  get "/resources", :controller => "resources", :action => "index"
  get "/resources/:id", :controller => "resources", :action => "show"

  # UPDATE
  get "/resources/:id/edit", :controller => "resources", :action => "edit"
  post "/update_resource/:id", :controller => "resources", :action => "update"

  # DELETE
  get "/delete_resource/:id", :controller => "resources", :action => "destroy"
  #------------------------------

  # Routes for the Video resource:
  # CREATE
  get "/videos/new", :controller => "videos", :action => "new"
  post "/create_video", :controller => "videos", :action => "create"

  # READ
  get "/videos", :controller => "videos", :action => "index"
  get "/videos/:id", :controller => "videos", :action => "show"

  # UPDATE
  get "/videos/:id/edit", :controller => "videos", :action => "edit"
  post "/update_video/:id", :controller => "videos", :action => "update"

  # DELETE
  get "/delete_video/:id", :controller => "videos", :action => "destroy"
  #------------------------------

  # Routes for the Lesson resource:
  # CREATE
  get "/lessons/new", :controller => "lessons", :action => "new"
  post "/create_lesson", :controller => "lessons", :action => "create"

  # READ
  get "/lessons", :controller => "lessons", :action => "index"
  get "/lessons/:id", :controller => "lessons", :action => "show"

  # UPDATE
  get "/lessons/:id/edit", :controller => "lessons", :action => "edit"
  post "/update_lesson/:id", :controller => "lessons", :action => "update"

  # DELETE
  get "/delete_lesson/:id", :controller => "lessons", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------



end
