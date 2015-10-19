require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.boolean :task_status
      t.string  :task
    end
  end
end