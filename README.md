# Sample Sinatra App for Twitter API v1.1 Calls
=============================

Read more about this here: [blog-post-URL](http://thisbythem.com/blog)

Twitter's new API got ya down? Requests coming back as 410? Gone gone gone.

Fork. Bundle. Update. Done.

This is good to push up to Heroku once you update you're credentials.

## Restrict Access
=============================
I would recommend restricting access to the app so your rate limits are compromised. For example: You can restrict access by IP address.

```
if request.ip == "123.456.678.99"
  jsonp @@twitter_client.home_timeline.map(&:attrs)
else
  status 401
end
```
