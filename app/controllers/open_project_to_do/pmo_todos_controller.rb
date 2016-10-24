require_dependency "open_project_to_do/application_controller"

module OpenProjectToDo
  class PmoTodosController < ApplicationController
    before_action :set_todo, except: :create
    def create
      @pmo_todo = PmoTodo.new(todo_params)
      if @pmo_todo.save
        redirect_to request.referer, notice: 'Todo created successfully'
      end
    end

    def destroy
      @todo_id = @todo.id
      @todo.delete

      redirect_to request.referer, notice: 'Todo deleted successfully'
    end

    def update
      if @todo.update_attributes(todo_params)
        redirect_to request.referer, notice: 'Todo updated successfully'
      end
    end
    
    def update_order
      PmoTodo.find_by(id: params[:pmo_todo][:todo_id]).update_attribute(:line_id, params[:pmo_todo][:line_id])
      
      todos = PmoTodo.where(work_package_id: params[:work_pack]).order('line_id asc')
      
      next_todo_line_id = 1
      todos.each do |t| 
        t.update_attribute(:line_id, next_todo_line_id)
        next_todo_line_id += 1
      end

      redirect_to request.referer, notice: 'Todos order updated successfully'
    end

    private
    def set_todo
      @todo = PmoTodo.find_by(id: params[:id])
    end

    def todo_params
      params.require(:pmo_todo || :todos).permit(:work_package_id, :sort, :line_id, :work, :work_unit, :duration, :duration_unit, :assignee_id, :text, :finished)
    end
  end
end
