require "./location.rb"

class Trip

  def initialize
    @steps = []
  end

  def add_steps(location)
    @steps << location
  end

  def iterate
    @last_step = nil
    puts "Began trip."
    @steps.each do |step|
      if @last_step
        puts "Travelled from #{@last_step} to #{step.name}."
      end
      @last_step = step.name
    end
    puts "Ended trip."
  end

end
