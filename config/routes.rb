OpenProjectToDo::Engine.routes.draw do

	post '/create' => 'pmo_todos#create', as: :create_todos
	delete '/todos/:id' => 'pmo_todos#destroy', as: :destroy_todo, format: :js

end
