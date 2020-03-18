class Book
    def initialize
        @exceptions = ['the', 'a', 'an', 'and', 'in', 'of']
    end

    def title
        @title
    end

    def title=(title)
        words = title.split(' ')
        mods = []
        mods.push(words[0].capitalize())
        words.shift
        words.each do |word|
            if @exceptions.include? word
                mods.push(word)
            else
                mods.push(word.capitalize())
            end
        end
        @title = mods.join(' ')
    end
end
