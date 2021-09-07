class Anagram
    attr_reader :word
    def initialize(word)
        @word = word
    end
    def match(arr)
        new_arr = arr.map do |a|  
            if @word.chars.sort == a.chars.sort
                a
            end
        end
        new_arr.reject { |n| n.to_s.empty? }
    end
end
