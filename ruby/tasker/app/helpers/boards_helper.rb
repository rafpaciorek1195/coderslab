module BoardsHelper
  
  def to_select_for_boards
    User.all.collect { |b| [b.first_name + ' ' + b.last_name, b.id] }
  end

end
