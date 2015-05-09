class Path < ActiveRecord::Base
  belongs_to :city
  validates :path_name, presence: true, length: {minimum: 3, maximum: 15}
  def desc
    return path_name + ' ' + description
  end

  def check
    self.path_name == path_name
  end

end
