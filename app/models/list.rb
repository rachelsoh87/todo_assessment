require_relative '../../config/application'

class List < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
end