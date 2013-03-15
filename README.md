# Sample Sinatra App for Twitter API v1.1 Calls
=============================

Read more about this here: [Them Blogs](http://thisbythem.com/blog/simple-sinatra-for-twitter-api-pie-guy-fieri/)

Twitter's new API got ya down? Requests coming back as 410? Gone gone gone.

Fork. Bundle. Update. Done.

This is good to push up to Heroku once you update you're credentials.

## Restrict Access
=============================
I would recommend restricting access to the app so your rate limits aren't compromised. For example: Check the request referrer.

```
if request.referrer == "http://example.com/blog/"
  jsonp @@twitter_client.home_timeline.map(&:attrs)
else
  status 401
end
```
