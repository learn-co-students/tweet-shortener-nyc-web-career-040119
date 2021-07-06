# Write your code here.
# words to be substituted & their substitutes
def dictionary
subs = {
  "hello"=>"hi",
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

  #convert tweet, which is a string, into an Array = .split
  #don't forget to turn back to string
def word_substituter(string)
tweet=string.split(" ")
i = 0 
while i < tweet.length 
if dictionary.keys.include?(tweet[i].downcase)
tweet[i] = dictionary[tweet[i].downcase]
end 
i+=1
end
tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |word|
    puts word_substituter(word)
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
  if word_substituter(tweet).length > 140
    "#{word_substituter(tweet)[0..136]}..."
  else 
  word_substituter(tweet)
end
end
