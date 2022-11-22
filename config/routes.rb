Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # read all
  get 'tasks', to: 'tasks#index'
  # create (add a new task)
  # display the Task form
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # handle the POST request when subimitting the form
  post 'tasks', to: 'tasks#create'
  # show - read one (list tasks)
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # update (edit a task/ mark as completed, update title & details)
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  # delete (remove a task)
  delete 'tasks/:id', to: 'tasks#destroy'
end
