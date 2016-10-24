OpenProjectToDo::Engine.routes.draw do

	post '/create' => 'pmo_todos#create', as: :create_todo
	patch '/:id/update' => 'pmo_todos#update', as: :update_todo
	delete '/todos/:id' => 'pmo_todos#destroy', as: :destroy_todo
	patch '/update_todos_order' => 'pmo_todos#update_order', as: :update_todos_order
end
