require 'httparty'
require 'json'

class PropertiesController < ApplicationController
  def index
  end

  def search
    url = 'http://index1.homeflow.co.uk/places?api_key=' + ENV['API_key'] + '&search[name]=' + params[:location]
    response = HTTParty.get(url).parsed_response
    #parsed = JSON.parse(response.parsed_response)
    send_back = []
    response["result"]["locations"]["elements"].each { |l| send_back << l["place_id"]}
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    p response["result"]["locations"]["elements"].size
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    render :json => send_back
  end

  def show
  end
end
