require_relative '../../config/application'

class  CreateLists < ActiveRecord::Migration
  def change  
    create_table :lists do |t|
      t.integer :user_id
      t.string  :list_name
    end
  end
end