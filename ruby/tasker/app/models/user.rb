class User < ActiveRecord::Base
  has_many :boards
  has_many :tasks, through: :boards

  def full_name
    self.first_name + ' ' + self.last_name
  end
end
