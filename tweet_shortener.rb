def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(string)
  
  string_array=string.split(" ")
    dictionary.each { |long, short| 
      string_array.each_with_index { |word, index| 
        if word.downcase == long 
          #puts "opportunity to shorten #{word} to #{short}"
          string_array[index]=short
        end
        }
     }
  string_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| 
   puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  tweet.length >140 ? tweet[0..139] : tweet
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  shortened.length >140 ? tweet[0..139] : tweet
end