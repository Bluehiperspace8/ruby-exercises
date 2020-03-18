def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase,times = 2)
    ([phrase] * times).join(' ')
end

def start_of_word(phrase,letters)
    phrase[0...letters]
end

def first_word(phrase)
    phrase.split(" ").first
end

def titleize(phrase)
    words = phrase.split.map do |word|
        if %w(the and over).include?(word)
          word
        else
          word.capitalize
        end
      end
      words.first.capitalize!
      words.join(" ")
end