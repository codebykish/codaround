require 'set'

@upperhalf = []
@downhalf = []

@students = ["bob","dirk","sjaak","kishan","marjolein","bassie","anja","klaas","kees","bruna"]
@random_students = @students.shuffle
@group_size = @students.length

 def generate_pairs_per_day
   initiate_round_robin

   days = @group_size

   (1...days).each do |day|
    up_to_down = @upperhalf.slice!(1)
    down_to_up = @downhalf.pop

    @upperhalf = @upperhalf << down_to_up
    @downhalf = @downhalf.insert(0,up_to_down)

    set_pairs
  end
end

def set_pairs
  pair = []
  possible_pairs = []
  (0...@group_size/2).each do |student|
    pair[0] = @upperhalf[student]
    pair[1] = @downhalf[student]
    print pair
    puts ""
  end
  puts "\n\n"
end

def initiate_round_robin
  (0...@group_size/2).each do |student|
    @upperhalf << @students[student]
  end

  (@group_size/2...@group_size).each do |student|
    @downhalf << @students[student]
  end
end

generate_pairs_per_day

# @students = ["bob","dirk","sjaak","kishan","marjolein","bassie","anja","klaas","kees","bruna"]
# @group_size = @students.length
# @old_days = []
#
#
#   def generate_days
#
#     num_days = @group_size
#
#     (1...num_days).each do |day|
#       set_day
#     end
#   end
#
#   def set_day
#
#     loop do
#       @new_day = shuffle_group
#       break if day_comparison?
#     end
#
#     @old_days << @new_day
#     print "day: #{@new_day} \n"
#   end
#
#   def day_comparison?
#     comparison = []
#     comparisons = []
#
#     @old_days.each do |day|
#       comparison = (@new_day & day)
#       comparisons += comparison
#     end
#
#     return comparisons.empty?
#   end
#
#   def shuffle_group
#     @students.shuffle.each_slice(2).map{ |group| Set.new(group) }
#   end
#
#   generate_days
