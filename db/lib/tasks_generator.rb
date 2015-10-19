require_relative '../../app/models/task'
require 'faker'

module TasksGenerator
  def self.generate
    #This is to generate 5 tasks for each of the (4) lists. 
    counter = 1
    4.times do
      5.times do
        Task.create(
          list_id: counter,
          task_status: [true, false].sample,
          task: Faker::Company.bs
        )
      end
      counter += 1
    end
  end
end

TasksGenerator.generate
