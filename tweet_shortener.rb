# Write your code here.
#use .keys method - this shows the hash's key
#convert string to array and turn it back to string
# "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

# "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

# "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

# "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

# "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"

def word_substituter(tweet)
  tweet_array = []
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
  
  tweet.split().each do |twit|
    tweet_array << twit
  end
  
  #loop over tweet_array and if array[item] == dictionary key, change array[item] = dictionary value
  #join them and return
  
  tweet_array.each_with_index do |twt, i|
    dictionary.each do |k, v|
      if tweet_array[i] == k || tweet_array[i] == k.capitalize #added capitalize to pass second question
        tweet_array[i] = v
      end
    end
  end
  
  tweet_array.join(" ")
  
end

def bulk_tweet_shortener(tweet)

  tweet.each do |twit|
    puts word_substituter(twit)
  end

end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)[0..139]
  else
    word_substituter(tweet)
  end
end