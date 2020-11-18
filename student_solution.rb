# Hello World

#1
puts "Hello World"

#2
adjective = "Big Bad"
puts "Hello #{adjective} World"
#3
message = "Hello World"
puts message.upcase

# Nums Array and Enumerables
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]
#1
puts nums.uniq

#2
nums.push(5)
nums.pop()
nums.shift()
nums.unshift()
nums.length()
#3
puts nums.include?(8)

#4
puts nums.find_all {|i| i>10}

#5
puts nums.all? {|i| i>0}

#6
puts nums.any?{|i| i % 8 == 0}

#7
puts nums.count{|i| i>4}

#8
nums.each_with_index {|i, index| puts i * index}

#9
puts nums.find{|i| i % 5 == 0 && i % 7 == 0 && i > 0 }

#10
puts nums.find_index{|i| i % 5 == 0 && i % 7 == 0 && i > 0 }


#11
puts nums.first(3)

#12
puts nums.last(3)

#13
puts nums.group_by{|i| i % 3}

#14
puts nums.minmax{|i, j| i<=> j}

#15
puts nums.reject{|i| i % 3 != 0}

#16
puts nums.select{|i|i % 5 == 0}

puts "----------------------------------------"

# Color Array
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
#1
puts colors.sample

#2
puts colors.reverse()

#3
puts colors.join(" ").upcase

# Methods

#1 

def find_area height, width
  height * width
end

puts find_area(5, 3)
#2
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
  arr.map{|num| puts num * 5}
end

multiply_each_by_five(nums)
# Methods With a Hash

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

def print_price hash
  hash[:price]
end

puts print_price(book)

def print_item_sums(hash1, hash2)
  hash1[:price] + hash2[:price]
end
puts print_item_sums(lamp, table)