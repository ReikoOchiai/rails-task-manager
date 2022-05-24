Rails.application.routes.draw do
  get "tasks", to: "tasks#index"
  # create new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Edit task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update", as: :task_update

  # delete task
  delete "tasks/:id", to: "tasks#destroy", as: :task_delete
  # see specific task
  get "tasks/:id", to: "tasks#show", as: :task
end
