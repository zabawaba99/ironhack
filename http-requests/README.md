# http-requests

---

This project sets up a [basic controller](https://github.com/zabawaba99/ironhack/blob/master/http-request/app/controllers/example_controller.rb) that responds to 3 routes.

  1. `GET /example/get`<br>
    Sets custom response headers
  2. `POST /example/post`<br>
    Responds with an error
  3. `GET /example/redirect`
    Responds with a redirect

## Making Http Requests

There are 3 ruby scripts at the root of this project which perform an
HTTP request to one of the 3 [configured routes](https://github.com/zabawaba99/ironhack/blob/master/http-request/config/routes.rb)

  1. [Get Request](https://github.com/zabawaba99/ironhack/blob/master/http-request/get-request.rb)
  2. [Post Request](https://github.com/zabawaba99/ironhack/blob/master/http-request/post-request.rb)
  3. [Redirect Request](https://github.com/zabawaba99/ironhack/blob/master/http-request/redirect-request.rb)