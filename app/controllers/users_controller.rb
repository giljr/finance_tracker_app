class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
    # p "_______________________"
    # p @tracked_stocks.inspect
    # p "_______________________"
  end
end
