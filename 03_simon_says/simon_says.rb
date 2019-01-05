#write your code here

def echo(something)
    "#{something}"
end


def shout(something)
    "#{something.upcase}"

end

def repeat(something,n=2)

    # [something] * n * " "    1st solution
    n.times.collect {something}.join(' ') #2nd solution

end

def start_of_word(word,n=0)
    word[0...n]
end

def first_word(word)
    word.split(" ")[0]

end


# def titleize(word)
#     # w = word.split(" ")
#     # w.map { |word| word.upcase}.join(" ")
#     word.capitalize
# end

def titleize(word)
    # w = word.split(" ")
    # w.map { |word| word.capitalize}.join(" ")
    # word.titleize


    words = word.split.map do |word|
        if %w(the and over).include?(word)
          word
        else
          word.capitalize
        end
      end
      words.first.capitalize!
      words.join(" ")
end