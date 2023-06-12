class StocksController < ApplicationController 
    before_action :list_stocks, only: [:search]

    def search
        if params[:stock].present?
            @stock = Stock.new_lookup(params[:stock])            
            if @stock
                # respond_to do |format|
                #     format.js { render partial: 'users/result', status: :unprocessable_entity }
                #   end              
                render 'users/my_portfolio'
            else 
                # respond_to do |format|
                #     flash.now[:alert]= "Please enter a VALID Nasdaq Ticker symbol to search like: GOOG, AAPL, MSFT, AMZN, META, TSLA, NKE. Look for investopedia.com to learn more 😉️ Go to: https://www.investopedia.com/terms/s/stocksymbol.asp"
                #     format.js { render partial: 'users/result', status: :unprocessable_entity }
                # end  
                flash[:alert]= "Please enter a VALID Nasdaq Ticker symbol to search like: GOOG, AAPL, MSFT, AMZN, META, TSLA, NKE."# Look for investopedia.com to learn more 😉️ Go to: https://www.investopedia.com/terms/s/stocksymbol.asp"                              
                # Rails.logger.info("#### Flash pass..api was call ####")
                redirect_to my_portfolio_path
            end            
        else
            # respond_to do |format|
            #     flash.now[:alert]= "Please enter a Nasdaq TICKER symbol to search like: GOOG, AAPL, MSFT, AMZN, META, TSLA, NKE. Look for investopedia.com to learn more 😉️ Go to: https://www.investopedia.com/terms/s/stocksymbol.asp"
            #     format.js { render partial: 'users/result', status: :unprocessable_entity }
            # end
            flash[:alert]= "Please enter a Nasdaq TICKER symbol to search like: GOOG, AAPL, MSFT, AMZN, META, TSLA, NKE."# Look for investopedia.com to learn more 😉️ Go to: https://www.investopedia.com/terms/s/stocksymbol.asp"
            # Rails.logger.info("#### Flash pass..blank submitted:/ #### ")
            redirect_to my_portfolio_path
        end
     end
end