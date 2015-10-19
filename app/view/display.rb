require 'byebug'

class Display
  def self.list(list_id)
    p list_id
    list_to_loop = List.find(list_id).tasks.all
    list_to_loop.each_with_index do |task, index|
      if task.task_status == true
        task_status = "[X]"
      else
        task_status = "[ ]"
      end
    puts "#{index+1}. #{task_status} #{task.task}" 
    end  
  end
  
  def self.add_message(input)
    puts "Your task '#{input.join(" ")}' has been added to your to-do list!"
  end
  
  def self.toggle_message(input)
    puts "Your task '#{input.join(" ")}' has been toggled!"
  end
  
  def self.delete_message(input)
    puts "Your task '#{input.join(" ")}' has been deleted!"    
  end
  
end