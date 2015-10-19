require_relative 'config/application'
require_relative 'app/models/user'
require_relative 'app/models/list'
require_relative 'app/models/task'
require_relative 'app/controllers/controller'
require_relative 'app/view/display'

input = ARGV
Controller.run(input)