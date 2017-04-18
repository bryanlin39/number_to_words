class Fixnum
  define_method(:input_length) do
    string = self.to_s()
    length = string.length
    length
  end
end

class Fixnum
  numbers = Hash.new()
  numbers.store(100, "hundred")
  numbers.store(90, "ninety")
  numbers.store(80, "eighty")
  numbers.store(70, "seventy")
  numbers.store(60, "sixty")
  numbers.store(50, "fifty")
  numbers.store(40, "forty")
  numbers.store(30, "thirty")
  numbers.store(20, "twenty")
  numbers.store(19, "nineteen")
  numbers.store(18, "eighteen")
  numbers.store(17, "seventeen")
  numbers.store(16, "sixteen")
  numbers.store(15, "fifteen")
  numbers.store(14, "fourteen")
  numbers.store(13, "thirteen")
  numbers.store(12, "twelve")
  numbers.store(11, "eleven")
  numbers.store(10, "ten")
  numbers.store(9, "nine")
  numbers.store(8, "eight")
  numbers.store(7, "seven")
  numbers.store(6, "six")
  numbers.store(5, "five")
  numbers.store(4, "four")
  numbers.store(3, "three")
  numbers.store(2, "two")
  numbers.store(1, "one")

  define_method(:number_to_word) do
    input = self
    words_array = []
    numbers.each() do |number, value|
      if input == 0
        return 'zero'
      elsif input == number
        words_array.push(numbers[number])
      elsif input > number
        words_array.push(numbers[number])
        remainder = input - number
        words_array.push(numbers[remainder])
        break
      end
    end
    words_array.join(" ")
  end
end
