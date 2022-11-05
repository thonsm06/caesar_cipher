def cipher(string, num)
    array = string.downcase.chars()
    new_array = [];
    pos = 0;
    array.each do |i| 
        if i.ord >= 118 #wrap letter back
            new_array[pos] = (96 + (num - (122 - i.ord))).chr
        elsif i.ord < 97
            new_array[pos] = i.ord.chr
        else
            new_array[pos] = (i.ord + num).chr 
        end
        pos += 1
    end
    return new_array.join.capitalize
end
p cipher("What a string!", 5)
