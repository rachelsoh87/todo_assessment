require_relative '../../app/models/list'
require 'faker'

module ListsGenerator
  def self.generate
    #This is to generate 2 lists for each of my (2) users. 
    #User 1 will have 'list_id 1 & 2', User 2 will have 'list_id 3 & 4'.
    counter = 1
    2.times do
      2.times do
      List.create(
        user_id: counter,
        list_name: Faker::Commerce.department
      )
      end
      counter += 1
    end  
  end
end

ListsGenerator.generate
