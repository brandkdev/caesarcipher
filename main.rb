require 'pry-byebug'

def caesar_cipher(input, offset)
    input_array = input.chars
    output_array = input_array.map do |character|
        if character.ord.between?(65, 90) || character.ord.between?(97, 122)
            if (character.ord + offset).between?(91, 96)
                character = (65 + ((character.ord + offset) - 91)).chr
            elsif (character.ord + offset) > 122
                character = (97 + ((character.ord + offset) - 123)).chr
            else character = (character.ord + offset).chr
            end
        else character = character
        end
    end
    output_array.join
end
p caesar_cipher('What a string!', 5)
