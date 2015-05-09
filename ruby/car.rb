class Car

  def initialize(name = "undefined", state = :park)
    @state = state
    @name = name
  end

  def start!
    @state = :drive
  end

  def stop!
    @state = :park
  end

  def is_driving?
    @state == :drive ? puts("Yes, the #{@name} is driving") : puts("No, the #{@name} is not driving")
  end

  def is_stopped?
    @state == :park ? puts("Yes, the #{@name}is stopped") : puts("No, the #{@name} is not stopped")
  end
end

class Bus < Car
  def initialize(name, state, load = 0)
    @load = load
    super(name)
    super(state)
  end

  def current_load?
    puts "Current load: #{@load}"
  end

  def change_load!
    puts "How many people came in?"
    a = gets.chomp.to_i
    puts "How many people left the bus"
    b = gets.chomp.to_i
    return @load = @load + a - b
  end
end


solaris = Bus.new("Solaris", :park, 5)
p solaris
solaris.current_load?
solaris.change_load!
solaris.current_load?




