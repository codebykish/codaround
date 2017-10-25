require 'set'

# @upperhalf = []
# @downhalf = []
#
#
#
# @students = ["bob","dirk","sjaak","kishan","marjolein","bassie","anja","klaas","kees","bruna"]
# @random_students = @students.shuffle
# @group_size = @students.length
#
# def generate_days
#   initiate
#
#   days = @group_size
#
#   (1...days).each do |day|
#     up_to_down = @upperhalf.slice!(1)
#     down_to_up = @downhalf.pop
#
#     @upperhalf = @upperhalf << down_to_up
#     @downhalf = @downhalf.insert(0,up_to_down)
#
#     set_pairs
#   end
# end
#
# def set_pairs
#   pair = []
#   possible_pairs = []
#   (0...@group_size/2).each do |student|
#     pair[0] = @upperhalf[student]
#     pair[1] = @downhalf[student]
#     print pair
#     puts ""
#   end
#   puts "\n\n"
# end
#
# def initiate
#   (0...@group_size/2).each do |student|
#     @upperhalf << @students[student]
#   end
#
#   (@group_size/2...@group_size).each do |student|
#     @downhalf << @students[student]
#   end
# end
#
# generate_days

@students = ["bob","dirk","sjaak","kishan","marjolein","bassie","anja","klaas","kees","bruna"]

shuffled = @students.shuffle.each_slice(2).map{ |group| Set.new(group) }

print shuffled
