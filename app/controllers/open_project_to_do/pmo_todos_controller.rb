require_dependency "open_project_to_do/application_controller"

module OpenProjectToDo
  class PmoTodosController < ApplicationController

    before_action :set_work_package
    
    def create
      @todos = PmoTodo.where(work_package_id: params[:id]).order('line_id asc')
      
      respond_to do |format|
        format.rabl
      end
    end

    private

  end
end
