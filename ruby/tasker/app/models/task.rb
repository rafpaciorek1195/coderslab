class Task < ActiveRecord::Base
  belongs_to :board
  belongs_to :assigner, class_name: "User"
end
