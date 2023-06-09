class StocksController < ApplicationController 

    def search
        if params[:stock].present?
            @stock = Stock.new_lookup(params[:stock])
            if @stock
                render 'users/my_portfolio'
            else 
                flash[:alert]= "Please enter a VALID Nasdaq Ticker symbol to search like: GOOG, AAPL, MSFT, AMZN, META, TSLA, NKE. Look for investopedia.com to learn more 😉️ Go to: https://www.investopedia.com/terms/s/stocksymbol.asp"
                redirect_to my_portfolio_path
            end            
        else
            flash[:alert]= "Please enter a Nasdaq TICKER symbol to search like: GOOG, AAPL, MSFT, AMZN, META, TSLA, NKE. Look for investopedia.com to learn more 😉️ Go to: https://www.investopedia.com/terms/s/stocksymbol.asp"
            redirect_to my_portfolio_path
        end
     end
end