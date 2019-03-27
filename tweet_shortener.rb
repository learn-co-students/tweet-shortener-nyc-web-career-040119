def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  tweet = string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener (array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator (string)
  shortened = word_substituter(string)
  if shortened.length > 140
    shortened[0..134] + "(...)"
  else
    string
  end
end
