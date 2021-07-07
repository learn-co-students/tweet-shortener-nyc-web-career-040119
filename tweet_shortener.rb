# Write your code here.

def word_substituter(tweet)
  dictionary = {
    "hello" =>  "hi",
    "to" =>  "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you"=>  "u",
    "at" => "@",
    "and" => "&" }
    
  tweet_array = tweet.split()
  
  tweet_array.each_with_index do |word , i|
    dictionary.each do |key , substitute|
      if word.downcase == key 
        tweet_array[i] = substitute
      end 
    end 
  end 
  tweet_array.join(" ")
  
end
    
def bulk_tweet_shortener(array_of_tweets)
  
  array_of_tweets.each do |tweet|
   puts word_substituter(tweet)
  end 
  
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140
   tweet =  word_substituter(tweet)
  else 
   tweet
  end
end 
  
  
def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    tweet = tweet[1..137] + "..."
  else 
    tweet
    
  end 
end 

