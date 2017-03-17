class HomeController < ApplicationController
  def index
    array = []
    @log_games = LogGame.eager_load(:user).all
  end

  def history
    @log_games = current_user.log_games.eager_load(:opponent)
  end

end
