#!/usr/bin/env ruby

def bubble_sort

    puts "Enter number of items"

    total_items = gets.chomp

    items=total_items.to_i
    array = []

    0.upto(items-1) do |i|
        array[i] = gets.chomp
    end

    puts "Total Number of items in the array is:  #{total_items}"

    puts "Youre array is #{array}"

    array.each do
        i = 0
        count = 0
        while i < items- 1
            if array[i] > array[i + 1]
              temp = array[i]
              array[i] = array[i + 1]
              array[i + 1] = temp
            end
            i += 1
            count += 1
        end
        break if count.zero?
    end

    puts "\nAnd sorted array is #{array}"
end

bubble_sort()