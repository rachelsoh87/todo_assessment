class Controller
  def self.run(input)
    user_id = input[0]
    input.shift
    list_id = input[0] #index keeps turning to "0" because of "input.shift"
    input.shift
    case list_id 
      when "1"
        task_list = List.first
      when "2"
        task_list = List.second
      when "3"
        task_list = List.third
      when "4"
        task_list = List.fourth
    end
    command = input[0]
    input.shift
    
    case user_id
      when "1"
        if list_id == "1" or list_id == "2"
          if command == "list"
            task_list.list_all_tasks_in_table(list_id) 
          elsif command == "add"
            task_list.add_tasks_to_table(input)
            Display.add_message(input)
          elsif command == "toggle"
            task_list.toggle_task_status(input, list_id)
            Display.toggle_message(input)
          elsif command == "delete"
            task_list.delete_task(input,list_id)
            Display.delete_message(input)
          else
            puts "Sorry '#{command}' not found"
          end
        else
          puts "You do not have that to-do-list!"
        end
      when "2"  
        if list_id == "3" or list_id == "4"
          if command == "list"
            task_list.list_all_tasks_in_table(list_id) 
          elsif command == "add"
            task_list.add_tasks_to_table(input)
            Display.add_message(input)
          elsif command == "toggle"
            task_list.toggle_task_status(input, list_id)
            Display.toggle_message(input)
          elsif command == "delete"
            task_list.delete_task(input,list_id)
            Display.delete_message(input)
          else
            puts "Sorry '#{command}' not found"
          end
        else
          puts "You do not have that to-do-list!"
        end
    end
  end
  
end