class PlayersController < ApplicationController

  def profile
    @player = Player.find_by_name(params[:name])
    if @player
      @wins = @player.wins
      @loses = @player.loses
    else
      puts 'no'
    end
  end
end
