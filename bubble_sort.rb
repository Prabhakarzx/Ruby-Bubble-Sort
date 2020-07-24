#!/usr/bin/env ruby

puts "Enter number of items"

total_items = gets.chomp

i=total_items.to_i
array_item = []

i.times do |i|
    array_item[i] = gets.chomp
end

puts "Total Number of items in the array is:  #{total_items}"

puts "You're array is #{array_item}"

puts "\nAnd sorted array is #{array_item.sort}"