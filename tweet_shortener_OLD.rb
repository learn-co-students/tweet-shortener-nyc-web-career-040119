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
  split_tweet = tweet.split
  dic_keys = dictionary.keys
  new_split_tweet = []

    split_tweet.each do |tweet_piece|

      #i = split_tweet.index(tweet_piece)

      normalized_tweet_piece = tweet_piece.downcase.gsub(/[^[:word:]\s]/, ' ')

      dic_keys.each do |key|

        if normalized_tweet_piece == key
          dictionary.each do |word,sub|
            if word == key



            end
          end
        else new_split_tweet << tweet_piece
          break
        end
      end
    end
end
#word_substituter(tweet)


tweet_array.each do |tweet_word|
  norm_tweet_word = tweet_word.downcase.gsub(/[^[:word:]\s]/, ' ')
  dictionary.each do |word,sub|
    if word.include?(norm_tweet_word)
      i = tweet.  index(tweet_word)
      tweet_word[i] = sub

      binding.pry
    end
  end


  tweet.split.map do |word|
    dictionary.keys.map do |dic_key|
      if dic_key.include?(word.downcase.gsub(/[^[:word:]\s]/, ' '))
        i = dictionary[dic_key]
        new_tweet_array << i
      else
        new_tweet_array << word
      end
    end
  end
  uniq_new_tweet_array = new_tweet_array.uniq!
  uniq_new_tweet_array.join(" ")


  def word_substituter(tweet)
    split_tweets = tweet.split
    normalized_tweet_words = []
    new_split_tweets = []
    split_tweets.each do |tweet_word|
      normalized_tweet_word = tweet_word.downcase.gsub(/[^[:word:]\s]/, ' ')


      dictionary.each do |word,sub|
        if word.include?(normalized_tweet_word) || word == normalized_tweet_word
          new_split_tweets.push(sub)

          binding.pry
          #break
        else
          new_split_tweets.push(tweet_word)
          #break
        end

      end


    new_split_tweets
    binding.pry
  end



  def word_substituter(tweet)
    split_tweets = tweet.split
    dic_keys = dictionary.keys
    dic_values = dictionary.values
    new_split_tweets = []
    i = 0
    x = 0

    while i < split_tweets.length
      dic_key = dic_keys[i]
      normalized_tweet_word = split_tweets[i].downcase.gsub(/[^[:word:]\s]/, ' ')

      if dic_key == normalized_tweet_word || dic_key.include? normalized_tweet_word
        split_tweets[i].replace dic_values[i]
        #dic_keys[i].include? split_tweets[i].downcase.gsub(/[^[:word:]\s]/, ' ')
        #|| dic_keys[i] == split_tweets[i].downcase.gsub(/[^[:word:]\s]/, ' ')
      i += 1
    end

    new_split_tweets

  end

  def word_substituter(tweet)
    split_tweets = tweet.split
    dic_keys = dictionary.keys
    dic_values = dictionary.values
    new_split_tweets = []
    i = 0
    x = 0

    while i < split_tweets.length
      #dic_key = dic_keys[i]
      #normalized_tweet_word = split_tweets[i].downcase#.gsub(/[^[:word:]\s]/, ' ')

      if dic_keys[i] == split_tweets[i].downcase #|| dic_key.include?(normalized_tweet_word)
        split_tweets[i].replace!(dic_values[i])

      end
      i += 1
      #binding.pry
    end

    split_tweets.join(" ")

  end