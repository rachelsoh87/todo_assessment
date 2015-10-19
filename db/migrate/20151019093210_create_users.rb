require_relative '../../config/application'

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, unique: true
    end
  end
end