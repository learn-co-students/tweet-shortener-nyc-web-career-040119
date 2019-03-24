def dictionary

word_subs = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

  def word_substituter(tweet)
  tweet_arr = tweet.split(" ")
  dictionary.keys.each do |i|
    tweet_arr.map! { |x| x.downcase == i ? dictionary[i] : x }
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short = word_substituter(tweet)

if short.length > 140
  short[0...140]
else
  short
end
end
