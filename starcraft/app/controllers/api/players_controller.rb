class Api::PlayersController < ApplicationController
  def show
    player_id = params[:player_id]
    protoss_matches = Match.by_player(player_id).by_faction("protoss")
    zerg_matches = Match.by_player(player_id).by_faction("zerg")
    terran_matches = Match.by_player(player_id).by_faction("terran")
    render json: {protoss: protoss_matches, terran: terran_matches, zerg: zerg_matches}
  end

  def alternative_show
    player_id = params[:player_id]
    matches = Match.where('winner_id = ? OR loser_id = ?', player_id, player_id)

    match_hash = {protoss: [], terran: [], zerg: []}
    matches.each do |match|
      # if player was the winenr
        # match_hash[match.winning_faction].push match
      # else
        # match_hash[match.loser_faction].push match
    end
  end
end
