require_relative '../../config/application'
require_relative '../controllers/controller'

class List < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  
  def list_all_tasks_in_table(list_id)
    Display.list(list_id)
  end
  
  def add_tasks_to_table(input)
    text = input.join(" ")  
    Task.create(list_id: self.id, task_status: false, task: text)
  end
  
  def toggle_task_status(input, list_id)
    list_to_loop = List.find(list_id).tasks.all
    n = input.first.to_i
    list_to_loop.each_with_index do |task, index|
      if  index == n - 1
        if task.task_status == false #if task status is false, task_status changes to true
          task.task_status = true
        else 
          task.task_status = false
        end
        task.save
      end
    end
  end
  
  def delete_task(input, list_id)
    list_to_loop = List.find(list_id).tasks.all
    n = input.first.to_i
    list_to_loop.each_with_index do |task, index|
      if  index == n - 1
        task.destroy
      end
    end
  end
  
end