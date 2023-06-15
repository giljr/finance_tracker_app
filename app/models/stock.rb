require "net/http"
require "uri"
require "json"

class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks
  validates :name, :ticker, presence: true
  
  def self.new_lookup(ticker_symbol)   
    # https://docs.awesomeapi.com.br/api-de-moedas 
    uri = URI.parse("https://economia.awesomeapi.com.br/last/#{ticker_symbol}")
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body)[ticker_symbol.gsub('-','')]
    # client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:access_api_key],endpoint: 'https://cloud.iexapis.com/v1')
    begin      
      new(ticker:ticker_symbol, name:data['name'], last_price:data['ask'])
      # new(ticker:ticker_symbol, name:client.company(ticker_symbol).company_name, last_price:client.price(ticker_symbol))
    rescue => exception
      return nil            
    end
  end

  def self.check_db(ticker_symbol)
    where(ticker: ticker_symbol).first
  end
end
