def translate(s)
    words = s.split(' ')
    result = []
    words.each do |word|
        letters = word.split('')
        while not(letters.first == 'a' or letters.first == 'e' or letters.first == 'i' or letters.first == 'o' or letters.first == 'u') do
            if letters[0] == 'q' and letters[1] == 'u'
                letters = letters.insert(letters.length-1, letters.delete_at(0))
                letters = letters.insert(letters.length-1, letters.delete_at(0))
            else
                letters = letters.insert(letters.length-1, letters.delete_at(0))
            end
        end
        letters.push('ay')
        mod = letters.join('')
        result.push(mod)
    end
    result.join(' ')
end