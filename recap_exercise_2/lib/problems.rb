# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    max_number = [num_1,num_2].max
    min_number = [num_1,num_2].min
    i = 1
    while i > 0
        return (i * max_number) if (i * max_number) % min_number == 0
        i += 1
    end
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    bigram = []

    (0...str.length-1).each {|i| bigram << str[i..i+1] }
    bigram.inject do |ele1, ele2| 
        if bigram.count(ele1) > bigram.count(ele2)
            ele1
        else
            ele2
        end
    end
end




class Hash
#     # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
   def inverse
    new_hash = {}
    self.each {|k,v| new_hash[v]= k}
    new_hash

    end
end


class Array
#     # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0
        self.each_with_index do |number1, i1|
            self.each_with_index do |number2, i2| 
                if i2 > i1
                    count += 1 if number1 + number2 == num
                end
            end
        end
        
        count
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        prc ||= Proc.new {|a,b| a<=>b}
        sorted = false
        while !sorted
            sorted = true
            (0...self.length-1).each do |i|
                if prc.call(self[i], self[i+1]) == 1
                    self[i], self[i+1] = self[i+1], self[i]
                    sorted = false
                end
            end

        end
        self
    end
end
