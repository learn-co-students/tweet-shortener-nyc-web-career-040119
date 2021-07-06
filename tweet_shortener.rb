def dictionary
  replace = {
      "hello" => "hi",
      "to" => "2",
      "two" => "2",
      "too" => "2",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&",
      "for" => "4",
      "four" => "4"
    }
end

def word_substituter(string)
  cap_key = []
  dictionary.keys.each do |key|
    cap_key.push(key.to_s.capitalize)
  end

  arr = string.split(" ")
  tweet = []
  arr.each do |word|
    if dictionary.keys.include?(word)
      tweet.push(dictionary[word])
    elsif cap_key.include?(word)
      w = word.downcase
      tweet.push(dictionary[w])
    else
      tweet.push(word)
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  tweet = selective_tweet_shortener(string)
  if tweet.length > 140
    return "#{tweet[0...137]}..."
  else
    tweet
  end
end
