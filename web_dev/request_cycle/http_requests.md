# What are some common HTTP status codes?
* 200 OK - request succeeded
* 404 Not Found - server was not able to find the requested information
* 403 Forbidden - server refuses to return requested information
* 502 Bad Gateway - server the user is communicating with is a proxy and the actual server that contains the information is not able to be reached
* 504 Gateway Timeout - server is a proxy server and the actual server with information did not respond within a certain time period

### Status codes are grouped into 5 classes for easy identification
* 1xx - informational status codes
* 2xx - successful status codes
* 3xx - Redirection status codes
* 4xx - client error status codes
* 5xx - server error status codes

# What is the difference between a GET request and a POST request? When might each be used?
A GET request is used solely to retrieve data and is sent in the URL of a request and a POST request is used to submit data and is sent in the message body of the post request. GET can be used simply to access other webpages. POST can be used for form submissions such as email or ordering items online.

# **Optional bonus question:** What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a piece of data from a website that is stored in a user's browser whenever they visit a website. The cookie keeps track of what the user has done on that website so that when they visit the site again, the cookie is sent back to the website's server and knows what the user has done.