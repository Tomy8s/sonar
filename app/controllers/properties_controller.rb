require 'httparty'
require 'json'

class PropertiesController < ApplicationController
  def index
  end

  def search
    url = 'http://index1.homeflow.co.uk/places?api_key=' + ENV['API_key'] + '&search[name]=' + params[:location]
    response = HTTParty.get(url).parsed_response
    #parsed = JSON.parse(response.parsed_response)
    place_ids = []
    response["result"]["locations"]["elements"].each { |l| place_ids << l["place_id"]}
    send_back = []
    place_ids.each do |p|
      place_url = 'http://index1.homeflow.co.uk/properties/' + p + '?api_key=' + ENV['API_key']
      place_response = HTTParty.get(url).parsed_response
      send_back << place_response
    end
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    p response["result"]["locations"]["elements"].size
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    # send_back = place_ids
    render :json => send_back
  end

  def show
  end
end
