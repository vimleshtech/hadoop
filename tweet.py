import tweepy
from tweepy import OAuthHandler 
from textblob import TextBlob

ck="Jm6WDXZuiwlwUnT9mFbPdSpcg"
cs="Wp4Gbf74R6MZWjXvj0ifKrCobwWbchhn53Mv8L7VMLbIUi6Wnd"
at="919434545924935681-wFjVVTbs0pmyB2VwSoj4VwGb7tBYCyr"
ats ="RaPfxU0rSMjkS3MSI9N0ztXu4I2iLMecXg79OerNHw4Ly"


auth = OAuthHandler(ck, cs)
auth.set_access_token(at, ats)

api = tweepy.API(auth)


def get_tweet(name,n):
     tweets = api.search(q=name,count=n)
     for tw in tweets:
          try:
               print(tw.text)
          except:
               print('error')
          

###
names = ['Narenda Modi','Rahul Gandhi']
for n in names:
     get_tweet(n,30)
     




