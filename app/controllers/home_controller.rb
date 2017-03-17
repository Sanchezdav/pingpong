class HomeController < ApplicationController
  def index
    @log_games = LogGame.select('id, user_id, sum(user_score) as total, count(user_id) as played').group(:user_id)
    @log_games2 = LogGame.select('id, opponent_id, sum(opponent_score) as total, count(opponent_id) as played').group(:opponent_id)

    @log_games.each do |log|
      @log_games2.each do |log2|
        if log.user_id == log2.opponent_id
          log.total = log.total + log2.total
          log.played = log.played + log2.played
        end
      end
    end

  end

  def history
    @log_games = current_user.log_games.eager_load(:opponent)
  end

end
