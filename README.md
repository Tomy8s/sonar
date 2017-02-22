# README

This app queries Homeflow's database and returns the details of a property given it's property id.

Designed with Ruby v 2.3.1 and Rails 5.0.1

Run `bundle install` before use.

You will need API keys for Homeflow and Google maps.

Create a file at `config/env.yml` with the content below:

>Homeflow_key: '_your Homeflow key_'  
>Google_key: '_your Google maps key_'

Start the server and navigate to `localhost:3000`. Here you can enter a property id, for example `4631183`.

Try in production at <https://whispering-hamlet-25689.herokuapp.com/>.