require 'httparty'
require 'json'
require 'homeflow/api'
require 'dry_ice'

class PropertiesController < ApplicationController
  def index
  end

  def search
    # url = 'http://index1.homeflow.co.uk/places?api_key=' + ENV['API_key'] + '&search[name]=' + params[:location]
    # response = HTTParty.get(url).parsed_response
    #parsed = JSON.parse(response.parsed_response)
    # place_ids = []
    # send_back = []
    # response["result"]["locations"]["elements"].each { |e| place_ids << e["nodes"]}
    # place_ids.each do |p|
    #   place_url = 'http://index1.homeflow.co.uk/sites/' + p["site_id"].to_s + '/nodes/' + p["node_id"].to_s + '?api_key=' + ENV['API_key']
    #   place_response = HTTParty.get(url).parsed_response
    #   send_back << place_response
    # end
    # send_back = place_ids
  end

  def property_search
    url = "http://index1.homeflow.co.uk/properties/#{params[:property_id]}?api_key=#{ENV['API_key']}"
    response = HTTParty.get(url).parsed_response
    render :json => {property: response["result"]["property"], maps_key: ENV['Google_maps']}
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    p response
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
  end

  def show
  end
end
