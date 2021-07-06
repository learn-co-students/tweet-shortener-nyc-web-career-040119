require "pry"

def dictionary
  substitution_ref = {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end




def word_substituter(tweet)
  split_tweets = tweet.split
  dic_keys = dictionary.keys
  dic_values = dictionary.values
  new_split_tweets = []
  i = 0
  while i < split_tweets.length
    normalized_tweet_word = split_tweets[i].downcase.gsub(/[^[:word:]\s]/, ' ')
    dic_keys.each_with_index do |word, index|
      if word == "to, two, too"
        if word.include?(normalized_tweet_word)
          split_tweets[i].replace(dic_values[index])
          break
        end
      elsif word == "for, four"
          if word.include?(normalized_tweet_word)
            split_tweets[i].replace(dic_values[index])
            break
          end
      else
        if word == normalized_tweet_word
        split_tweets[i].replace(dic_values[index])
        break
        end
      end
    end
    i += 1
  end
  split_tweets.join(" ")
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
      return tweet
    end

end

def shortened_tweet_truncator(shortened_tweet)
  if shortened_tweet.length > 140
    return "#{shortened_tweet[0..(136)]}..."
  else
    return shortened_tweet
  end

end

