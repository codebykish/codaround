class Pair < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :day

def round_robin
  @users = User.all
  @students = shuffle.users.where(admin: true)
  @group_size = @students.length
  @upperhalf = []
  @downhalf = []

  (0...@group_size/2).each do |student|
    @upperhalf << @students[student]
  end

  (@group_size/2...@group_size).each do |student|
    @downhalf << @students[student]
end


def generate_robins_per_day
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
  (0...@group_size/2).each do |student|
    Pair.new()
    pair[0] = @upperhalf[student]
    pair[1] = @downhalf[student]
  end
end


  # def initiate_round_robin()
  #   (0...@group_size/2).each do |student|
  #     @upperhalf << @students[student]
  #   end
  #
  #   (@group_size/2...@group_size).each do |student|
  #     @downhalf << @students[student]
  #   end
  # end
  #
  # def generate_robins_per_day
  #   initiate_round_robin
  #
  #   days = @group_size
  #
  #   (1...days).each do |day|
  #     up_to_down = @upperhalf.slice!(1)
  #     down_to_up = @downhalf.pop
  #     @upperhalf = @upperhalf << down_to_up
  #     @downhalf = @downhalf.insert(0,up_to_down)
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
  #   end
  # end


end
