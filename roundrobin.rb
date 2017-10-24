@upperhalf = []
@downhalf = []



@students = ["bob","dirk","sjaak","kishan","marjolein","bassie","anja","klaas","kees","bruna"]
@group_size = @students.length

def generate_days
  initiate

  days = @group_size

  (1...days).each do |day|
    up_to_down = @upperhalf.slice!(1)
    down_to_up = @downhalf.pop

    @upperhalf = @upperhalf << down_to_up
    @downhalf = @downhalf.insert(0,up_to_down)

    puts "day #{day}:"
    print @upperhalf
    puts ""
    print @downhalf
    puts "\n\n"
  end
end

def set_pairs
  i = 1
  @upperhalf.each do |name|
    
end

def initiate
  (0...@group_size/2).each do |student|
    @upperhalf << @students[student]
  end

  (@group_size/2...@group_size).each do |student|
    @downhalf << @students[student]
  end
end

generate_days
