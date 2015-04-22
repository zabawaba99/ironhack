class Match < ActiveRecord::Base
  belongs_to :winner, class_name: "Player"
  belongs_to :loser, class_name: "Player"

  def self.by_player(player)
    where('winner_id = ? OR loser_id = ?', player, player)
  end

  def self.by_faction(faction)
    where('winner_faction = ? OR loser_faction = ?', faction, faction)
  end
end
