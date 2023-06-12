class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def list_stocks

        @tracked_stocks = current_user.stocks

        # p "_______________________"

        # p @tracked_stocks.inspect

        # p "_______________________"

    end

end

