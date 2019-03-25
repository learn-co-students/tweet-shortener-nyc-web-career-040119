# Write your code here.

def word_substituter(sentence)

dictionary = {
  :hello => "hi",
  :two => "2",
  :to => "2",
  :too => "2",
  :for => "4",
  :For => "4",
  :four => "4",
  :be => "b",
  :you => "u",
  :at => "@",
  :and => "&"
}
  split_sentence = sentence.split
  dictionary.each do |key,value|
    split_sentence.each do |word|
      if word == key.to_s
        word.gsub!(/#{word}/, word => value)
      end
    end
  end
  split_sentence.join(" ")
end


def bulk_tweet_shortener(tweets)

  dictionary = {
  :hello => "hi",
  :two => "2",
  :to => "2",
  :too => "2",
  :for => "4",
  :For => "4",
  :four => "4",
  :be => "b",
  :you => "u",
  :at => "@",
  :one => "1",
  :and => "&"
}


  tweets.each do |tweets|
  
    puts  word_substituter(tweets)
  end
end


def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else 
    tweets
  end
end 

def shortened_tweet_truncator(tweets)
  if tweets.length >= 140
    trunc_word = word_substituter(tweets)
      trunc_word[0..136] + "..."
  else
      tweets
  end 
end 
