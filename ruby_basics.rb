# https://jedi.mycohort.download/second-language/week-19/day-2/labs/ruby-basics

# ! Hello World
# 1. Print "Hello World" to the console
puts 'Hello World'

# 2. Interpolate the adjective variable into the Hello World string using #{}
adjective = 'Big Bad'
puts "Hello #{adjective} World"

# 3. Save "Hello World" to a variable.
# Without changing the letters in your code manually, permanently change "Hello World" to all uppercased letters.
hello_str = 'Hello World'
hello_str = hello_str.upcase
puts hello_str

# ! Nums Array and Enumerables
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# 1. Use .uniq to print the array with all duplicate entries removed
p nums.uniq

# 2. Next, use .push and .pop, .shift .unshift and .length on the array as you would with javaScript
# (if you need to add a number, add 5)
p nums.push(5)
p nums.pop
p nums.shift
p nums.unshift(5)
p nums.length

# 3. Use .include? to check if the array contains the number 8
puts nums.include?(8)

# 4. Use .find_all to find all the numbers greater than 10
p(nums.find_all { |e| e > 10 })

# 5. use .all? to check if all the numbers are greater than 0?
puts(nums.all?(:positive))

# 6. use any? to check if there are any numbers that are divisible by 8
puts(nums.any? { |e| (e % 8).zero? })

# 7. use .count to let you know how many numbers are greater than 4
puts(nums.count { |e| e > 4 })

# 8. use .each_with_index to print each item times its index
nums.each_with_index { |e, i| print "#{e * i} " }

# 9. find the number that is divisible by 7 and 5 and is greater than 0
p(nums.find { |e| e.positive? and (e % 5).zero? and (e % 7).zero? })

# 10. .find_index of the number that is divisible by 5 and 7 and is greater than 0
p(nums.find_index { |e| e.positive? and (e % 5).zero? and (e % 7).zero? })

# 11. return the .first 3 numbers
def first(numbers, int)
  numbers.first(int)
end
p first(nums, 3)

# 12. return the .last 5 numbers
def last(numbers, int)
  numbers.last(int)
end
p last(nums, 5)

# 13. .group_by the modulo of 3 ( % 3)
puts(nums.group_by { |e| e % 3 })

# 14. use minmax to return the smallest and largest number
def min_max(numbers)
  numbers.minmax { |a, b| a <=> b }
end
p(min_max(nums))

# 15. use .reject to return all the numbers that are NOT divisible by 3
def reject_not_div3(numbers)
  numbers.reject { |e| !(e % 3).zero? } # rubocop:disable Style/InverseMethods
end
p reject_not_div3(nums)

# 16. use .select to return all the numbers divisible by 5
def select_div5(numbers)
  numbers.select { |e| (e % 5).zero? }
end
p select_div5(nums)

# ! Color Array
colors = %w[red orange yellow green blue indigo violet]

# 1. Print out a random color.
puts colors.sample

# 2. Print out the colors array in reverse order.
p colors.reverse

# 3. Print out all of the colors in the array with all capital letters.
colors.each { |e| print("#{e.upcase} ") }
puts ''
# ! Methods
# 1. Write a method named find_area that finds the area of a rectangle when given values for width and height
def find_area(height, width)
  height * width
end
puts "def find_area(height, width) \n\theight * width\nend"

# 2. Write a method named multiply_each_by_five that will loop over the given numsarray below
# and print each number multiplied by 5
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five(arr)
  (arr.each { |e| print (e * 5), ' ' })
  puts ''
end
multiply_each_by_five(nums)

# ! Methods With a Hash
# Use the following given hashes to solve the problems below
# Hashes

# book = {
#   title: 'The Great Gatsby',
#   author: 'F Scott Fitzgerald',
#   year: 1925,
#   price: 10
# }

# lamp = {
#   type: 'reading',
#   brand: 'Ikea',
#   price: 25
# }

# table = {
#   type: 'bed side',
#   brand: 'Crate & Barrel',
#   color: 'birch',
#   price: 50
# }

# 1. Write a method named print_price that will take in any hash and return the price of the item.

def print_price(hash)
  hash.fetch(:price)
end

puts "def print_price(hash) \n\thash.fetch(:price)\nend"

# 2. Write a method named print_item_sums that will take in two hashes
# and will return the sum of the prices for the items in the hashes.
def print_item_sums(hash_a, hash_b)
  print_price(hash_a) + print_price(hash_b)
end

puts "def print_item_sums(hash_a, hash_b) \n\tprint_price(hash_a) + print_price(hash_b)\nend"

# ! Solving Problems with Ruby

# * Euler Problem 1
# 1. Find the sum of all the multiples of 3 or 5 below 1000.
p ((1..999).to_a.keep_if { |e| ((e % 3).zero? || (e % 5).zero?) }).sum

# * Primes
# 1. Write a method called check_prime? that will test whether a number is Prime.
# The method will return true if Prime, false if not.
require 'prime'
def check_prime?(int)
  Prime.prime?(int)
end

puts "require 'prime'\n def check_prime?(int) \n\tPrime.prime?(int)\nend"

# 2. Write another method called get_primes that will print all the Primes up to an arbitrary limit.
# For example, if you invoke your method with get_primes 100,
# it will print all the Prime numbers up to and including 100
def get_primes(qyt)
  Prime.first qyt
end

puts "require 'prime'\n def get_primes(qyt) \n\tPrime.first qyt\nend"

# 3. This method can call on the previous check_prime? method.
def prime_callback(wants_to_check_prime, int)
  wants_to_check_prime ? check_prime?(int) : nil
end

puts "def prime_callback(wants_to_check_prime, int) \n\twants_to_check_prime ? check_prime?(int) : nil\nend"

# ! Hungry For More?
# * Pandigital Numbers
def pandigital?(nums, pan_n)
  arr = nums.to_s.split('').collect(&:to_i).sort
  return false if arr.length != pan_n || arr[0] != 1 || arr.last == arr[0] || arr.last != pan_n

  arr == (arr.first..pan_n).to_a
end

puts "def pandigital?(nums, pan_n) \n\tarr = nums.to_s.split('').collect(&:to_i).sort"
puts "\treturn false if arr.length != pan_n || arr[0] != 1 || arr.last == arr[0] || arr.last != pan_n"
puts "\tarr == (arr.first..pan_n).to_a"
puts 'end'
