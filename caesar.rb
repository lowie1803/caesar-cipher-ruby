def caesar_cipher(str, shift) 
    shift = shift % 26 - 26
    alpha = "";
    for i in 'a'..'z'
        alpha += i
    end
    alpha = alpha.split('')
    str.split('').each_with_index do |u, index|
        if ('a'..'z').include?(u)
            v = u.ord - 'a'.ord
            str[index] = alpha.at(v + shift)
        elsif ('A'..'Z').include?(u)
            v = u.ord - 'A'.ord
            str[index] = alpha.at(v + shift).to_s.upcase
        end
    end
    str
end

puts caesar_cipher('What a string!', 5)
puts caesar_cipher('SoMethinG sOmEThinG?', -4)