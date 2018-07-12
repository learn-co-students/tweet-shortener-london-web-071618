# Write your code here.

def dictionary
  list = {
    :hello => "hi",
    :to => 2,
    :two => 2, 
    :too => 2,
    :for => 4,
    :four => 4,
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
end

def word_substituter(tweet)
  
  array = tweet.split
  
  array.each_with_index do |word, index|
    dictionary.keys.each do |x|
      if x.to_s == word.downcase
        array[index] = dictionary[x]
      end
    end
  end
  
  array.join(" ")        
      
end

def bulk_tweet_shortener(array)
  
  array.each do |x|
    puts word_substituter(x)
  end 
  
end

def selective_tweet_shortener(tweet)
  
  if tweet.length >= 140
    word_substituter(tweet)
  else 
    tweet
  end 
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    "#{tweet[0...137]}..."
  else
    tweet
  end
end 