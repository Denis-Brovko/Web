# Завдання 1
def most_frequent_elements(arr)
  frequency = Hash.new(0)
  arr.each { |num| frequency[num] += 1 }
  
  max_frequency = frequency.values.max
  result = frequency.select { |num, count| count == max_frequency }.keys
  
  result
end

test_array1 = [1, 3, 1, 3, 2, 1]
test_array2 = [4, 4, 5, 6, 6, 5]

puts "Most frequent in #{test_array1}: #{most_frequent_elements(test_array1).join(', ')}"
puts "Most frequent in #{test_array2}: #{most_frequent_elements(test_array2).join(', ')}"


# Завдання 2
def to_pig_latin(sentence)
  sentence.split.map do |word|
    punctuation = word.match(/[^a-zA-Z0-9]/).to_s
    base_word = word.gsub(/[^a-zA-Z0-9]/, '')
    
    if base_word.empty?
      word
    else
      pig_word = "#{base_word[1..-1]}#{base_word[0].downcase}ay"
      pig_word.capitalize! if base_word[0] == base_word[0].upcase
      "#{pig_word}#{punctuation}"
    end
  end.join(' ')
end

test_sentence1 = "Hello world"
test_sentence2 = "I love Ruby programming!"

puts "Pig Latin for '#{test_sentence1}': #{to_pig_latin(test_sentence1)}"
puts "Pig Latin for '#{test_sentence2}': #{to_pig_latin(test_sentence2)}"