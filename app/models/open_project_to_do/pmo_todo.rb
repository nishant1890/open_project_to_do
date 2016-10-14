module OpenProjectToDo
  class PmoTodo < ActiveRecord::Base
  	belongs_to :work_package
  	belongs_to :assignee, class_name: User
  end
end
