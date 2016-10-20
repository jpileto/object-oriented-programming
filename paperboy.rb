# class Paperboy
#
#   attr_reader :earnings, :name
#   attr_accessor :experience
#
#   def initialize(name, street_side)
#     @name = name
#     @street_side = street_side
#   end
#
#   def quota
#    50 + 0.5 * @experience
#   end
#
# end

class Paperboy

  def initialize(name, experience, earnings)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    @quota = 50 + 0.5 * @experience
  end

  def deliver(start_house, end_house)
  @deliver = end_house - start_house + 1
  end

  def earnings
    if @deliver == @quota
      @deliver.to_i * 0.25
    elsif @deliver > @quota
      @deliver.to_i - @quota.to_i * 0.50 + @quota.to_i * 0.25
    elsif @deliver < @quota
      @Deliver.to_i * 0.25 - 2
    end
  end

  def report
    puts "I'm #{@name}, I have delivered #{@deliver} papers today and I have earned #{@earnings}."
  end
end

jim = Paperboy.new("Jim", "0", "0")
jim.quota
jim.deliver(1, 50)
jim.earnings
jim.report
