def word_substituter(string)
  dictionary = {
    'hello': 'hi',
    'to': '2',
    'two': '2',
    'too': '2',
    'for': '4',
    'four': '4',
    'be': 'b',
    'you': 'u',
    'at': '@',
    'and': '&'
  }
  tweet_array = string.split(/ /)
  tweet_array.each do
    i = 0
    while i < tweet_array.length do
      dictionary.each do |word, substitute|
        word_holder = word.to_s
        
        if tweet_array[i].downcase == word_holder
          tweet_array[i] = substitute
        end
      end
      i += 1
    end
  end
  return tweet_array.join(' ')
end
        
def bulk_tweet_shortener(array)
  array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    return word_substituter(string)
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  if word_substituter(string).length > 140
    return "#{word_substituter(string)[0..136]}..."
  else
    return word_substituter(string)
  end
end