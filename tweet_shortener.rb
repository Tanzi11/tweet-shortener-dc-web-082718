def dictionary
  {
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end 

def word_substituter(tweet)
  tweet.split.collect {|word| dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] : word }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
    elsif tweet.length <= 140
    tweet
  end
  
      
  