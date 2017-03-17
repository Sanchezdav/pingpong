class LogGamesController < ApplicationController
  def new
    @log_game = current_user.log_games.new
  end

  def create
    @log_game = current_user.log_games.new(log_game_params)

    if @log_game.save
      redirect_to root_url, notice: 'Log game was created succesffully'
    else
      render :new_log
    end
  end

  private
  def log_game_params
    params.require(:log_game).permit(:opponent_id, :user_score, :opponent_score, :day, :month, :year)
  end
end
