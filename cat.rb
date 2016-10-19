class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def meow
    puts "My name is #{@name} and I love to eat #{@preferred_food} by #{eats_at}"
  end

  def eats_at
    if @meal_time.to_i < 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time.to_i - 12} PM"
    end
  end


end

roofus = Cat.new("roofus", "bbq", "8")
peachy = Cat.new("peachy", "chicken", "16")

# roofus.eats_at
# peachy.eats_at

roofus.meow
peachy.meow
