require 'pry-byebug'

def caesar_cipher(string, shift_factor)
    string.bytes.reduce("") { |result, char_ascii| 
        # Tests if character in ASCII range for captials or lowercases
        if char_ascii in 65..90
            # Conditional for if letter warps past end of alphabet
            if char_ascii + shift_factor > 90
                result + (char_ascii + shift_factor - 26).chr
            else
                result + (char_ascii + shift_factor).chr
            end
        elsif char_ascii in 97..122
            if char_ascii + shift_factor > 122
                result + (char_ascii + shift_factor - 26).chr
            else
                result + (char_ascii + shift_factor).chr
            end
        else
            result + char_ascii.chr
        end
    }
end

puts caesar_cipher("What a string!", 5)