class Person
  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def member_introduce
    puts "#{@name} #{@surname}"
  end
end

class Family
  def initialize(size = 5)
    @family = []
    @size = size
  end


  def add_member(person)
    if @family.size < @size then
      @family << person
    else puts "family is too big already, you have to cut someone loose"
    end
  end

  def delete_last
    @family.pop
  end

  def show_family
    puts "Family members:"
    @family.each do |czlowiek|
      czlowiek.member_introduce
    end
  end



  
end

def menu(family)
    puts "Insert 1 to add new member"
    puts "Insert 2 to delete last added membet"
    puts "Insert 3 to show list of all family members"
    puts "Insert 4 to quit menu"
    a = gets.chomp.to_i
    case a
    when 1
      puts "Give member name"
      n = gets.chomp
      puts "Give member surname"
      s = gets.chomp
      family.add_member(Person.new("#{n}","#{s}"))
      menu(family)
    when 2
      family.delete_last
      menu(family)
    when 3
      family.show_family
      menu(family)
    when 4 
      puts "Good bye"
    else menu(family)
    end
  end

litery = Family.new
menu(litery)



=begin 
r = Person.new("Rafal", "Paciorek")
p = Person.new("Bla", "Blabla")
s = Person.new("Ehh", "Heheh")
t = Person.new("tttt", "ttttt")
l = Person.new("ololol", "klolo")
x = Person.new("xxxx", "xxxxx")
litery = Family.new
litery.add_member(r)
litery.add_member(p)
litery.add_member(s)
litery.add_member(t)
litery.add_member(l)
litery.add_member(x)
litery.show_family
=end



