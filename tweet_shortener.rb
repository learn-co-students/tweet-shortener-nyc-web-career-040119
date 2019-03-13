def word_substituter(tweet)
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

  tweet = tweet.split(" ")
  i = 0

  while i < tweet.length
    if dictionary.keys.include?(tweet[i].downcase)
      tweet[i] = dictionary[tweet[i].downcase] #tweet[i] = dictionary(tweet[i])
    end
    i += 1
  end
  
  tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  for tweet in tweet_array
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[(0..136)] + "..."
  else
    tweet
  end
end