# Write your code here.
def word_substituter(tweet)
 
  #split the strings with individual words that can be replaced 
 words = tweet.split(" ")
 
#collect the new words into an empty array

 tweet_one_short = [ ]
#my dictionary

words.each do |word|
  when "hello" 
    tweet_one_short << "hi"
    when "to, two, too" 
      tweet_one_short << "2"
      when "for, four" 
        tweet_one_short << "4"
        when "be"
          tweet_one_short << "b"
          when  "you"
            tweet_one_short << "u"
            when "at" 
              tweet_one_short << "@"
              when "and" 
                tweet_one_short << "&"
                
                # send the rest of the words
                
              else tweet_one_short << word
end
# join the words into a new strings
return tweet_one_short.join
end

# def bulk_tweet_shortener(tweets)
#   tweets.each do |tweet|
#     tweet = word_substituter(tweet)
#     puts #{tweet}"
#   end
# end

def selective_tweet_shortener
  
end

def shortened_tweet_truncator
  
end 