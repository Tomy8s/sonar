require 'httparty'

class PropertiesController < ApplicationController
  def index
  end

  def search
    url = 'http://index1.homeflow.co.uk/places?api_key=' + ENV['API_key'] + '&search[name]=' + params[:location]
    response = HTTParty.get(url)
    render :json => response.parsed_response
  end

  def show
  end
end
