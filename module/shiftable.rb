module Shiftable

  def encrypt_string(message, shift)
    accum = []
    message.downcase.chars.each_with_index do |letter, position|
      if !@letters_array.include?(letter)
        accum << letter
      elsif position == 0 || position % 4 == 0
        accum << @letters_array[(@letters_array.index(letter) + shift.a_shift) % 27]
      elsif position == 1 || position % 4 == 1
        accum << @letters_array[(@letters_array.index(letter) + shift.b_shift) % 27]
      elsif position == 2 || position % 4 == 2
        accum << @letters_array[(@letters_array.index(letter) + shift.c_shift) % 27]
      elsif position == 3 || position % 4 == 3
        accum << @letters_array[(@letters_array.index(letter) + shift.d_shift) % 27]
      end
    end
    accum.join
  end

  def decrypt_string(message, shift)
    accum = []
    message.chars.each_with_index do |letter, position|
      if !@letters_array.include?(letter)
        accum << letter
      elsif position == 0 || position % 4 == 0
        accum << @letters_array[(@letters_array.index(letter) - shift.a_shift) % 27]
      elsif position == 1 || position % 4 == 1
        accum << @letters_array[(@letters_array.index(letter) - shift.b_shift) % 27]
      elsif position == 2 || position % 4 == 2
        accum << @letters_array[(@letters_array.index(letter) - shift.c_shift) % 27]
      elsif position == 3 || position % 4 == 3
        accum << @letters_array[(@letters_array.index(letter) - shift.d_shift) % 27]
      end
    end
    accum.join
  end

end
