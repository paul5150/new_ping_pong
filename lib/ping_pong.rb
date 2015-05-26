class Fixnum
  define_method(:ping_pong) do
    new_array = []
    numbers = (1..self)

    numbers.each() do |number|
      if number.%(15) == 0
        new_array.push('ping-pong')
      elsif number.%(3) == 0
        new_array.push('ping')
      elsif number.%(5) == 0
        new_array.push('pong')
      else
        new_array.push(number)
      end
    end
    new_array
  end
end
