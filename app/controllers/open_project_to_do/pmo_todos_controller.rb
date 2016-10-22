require_dependency "open_project_to_do/application_controller"

module OpenProjectToDo
  class PmoTodosController < ApplicationController
  	before_action :set_todo, except: :create
    def create
      @pmo_todo = PmoTodo.new(todo_params)
      @pmo_todo.save

      respond_to do |format|
      	format.js
      end
    end

    def destroy
    	@todo_id = @todo.id
    	@todo.delete
    	
    	respond_to do |format|
      	format.js
      end
    end
  	
  	private
  	def set_todo
  		@todo = PmoTodo.find_by(id: params[:id])
  	end

  	def todo_params
  		params.require(:todos).permit(:work_package_id, :sort, :line_id, :work, :work_unit, :duration, :duration_unit, :assignee_id, :text, :finished)
  	end
  end
end
