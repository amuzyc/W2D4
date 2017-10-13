require 'benchmark'

def first_anagram?(str1,str2)
  arr = str1.split("")
  arr = arr.permutation.to_a
  if str1.length != str2.length
    return false
  else
    arr.map {|subarray| subarray.join('')}.include?(str2)
  end
end
# puts Benchmark.measure{first_anagram?("uyhguhhap", "pah")}
#
# p first_anagram?("uyhguhhap", "pah")
def second_anagram?(str1, str2)
  return false if str1.length != str2.length
   arr1 = str1.split("")
   arr2 = str2.split("")
    arr1.each do |letter|
      idx = arr2.find_index(letter)
      return false unless idx
      arr2.delete_at(idx)
    end
  return true if arr2.empty?
end

 second_anagram?("hap", "pah")

def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end
# p third_anagram?("hap", "pah")

def fourth_anagram?(str1,str2)
  one = Hash.new(0)
  two = Hash.new(0)

  str1.chars do |k|
    one[k] += 1
  end
  str2.chars do |k|
    two[k] += 1
  end

  one == two
end

# p fourth_anagram?("hap", "pagh")
