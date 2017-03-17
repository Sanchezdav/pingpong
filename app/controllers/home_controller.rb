class HomeController < ApplicationController
  def index
    @log_games = LogGame.all
  end

  def history
  end

end
