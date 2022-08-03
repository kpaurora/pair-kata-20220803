require "set"

class Kata
  class RangeSet
    def initialize
      @range_set = []
    end

    def +(range)
      # @range_set << range
      @range_set.each do |rng|
      end
      
      self
    end

    def range_size
      sum = 0
      @range_set.each do |range|
        min = range.min
        max = range.max
        sum += max - min 
      end
      sum
    end
  end

  def interval_sum(intervals)
    range_set = RangeSet.new
    intervals.each do |interval|
      range_set = range_set + interval
    end
    puts "HERE: #{range_set}"
    range_set.range_size
    # total_range = Set.new
    # intervals.each do |interval|
    #   min = interval.min
    #   max = interval.max
    #   r = Range.new(min, max - 1)
    #   total_range += r.to_set
    # end
    # total_range.size
  end
end

##############################################################################
    #################
               ######################
                                                   ##################