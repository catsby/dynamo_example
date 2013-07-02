# DynamoExample

This is a project built with Elixir that uses Dynamo to serve web requests, for use on Heroku. 

Resources:

* [Elixir website](http://elixir-lang.org/)
* [Elixir getting started guide](http://elixir-lang.org/getting_started/1.html)
* [Elixir docs](http://elixir-lang.org/docs)
* [Dynamo source code](https://github.com/elixir-lang/dynamo)
* [Dynamo guides](https://github.com/elixir-lang/dynamo#learn-more)
* [Dynamo docs](http://elixir-lang.org/docs/dynamo)

# Running on Heroku

You can run Dynamo on Heroku using the [third-party Elixir buildpack](https://github.com/goshakkk/heroku-buildpack-elixir). 
Clone this repository, then from within the project directory, do the following:

1. Create the app:  

    `$ heroku create [app name]`

2. Set the custom buildpack:  

    `$ heroku config:add BUILDPACK_URL="https://github.com/goshakkk/heroku-buildpack-elixir.git" -a YOUR_APP`
 
2. Specify a preferred Erlang/OTP version by creating a `.preferred_otp_version` with contents `OTP_R16B`:  

    `$ echo "OTP_R16B" > .preferred_otp_version`
  
3. Specify a preferred Elixir version by creating a `.preferred_elixir_version` with contents `master`: 

    `$ echo "master" > .preferred_elixir_version`

4. Create a Procfile with a `web` process defined:

    `$ echo 'web: MIX_ENV=prod mix server -p $PORT' > Procfile`
    
5. Add and commit your changes:

    `$ git add Procfile .preferred_otp_version .preferred_elixir_version`
    `$ git commit -m "Setup for Heroku"`

6. Deploy!

    `$ git push heroku master`
