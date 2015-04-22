class Api::MatchesController < ApplicationController
  def wins
    matches = Match.joins(:winner).includes([:winner])
    render json: matches
  end

  def factions
    faction = params[:faction]
    matches = Match.joins(:winner).includes([:winner, :loser])
    .where('winner_faction = ? OR loser_faction = ?', faction, faction)
    render json: matches.to_json(include: ['winner', 'loser'])
  end
end
