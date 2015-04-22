class Player < ActiveRecord::Base
  has_many :wins, class_name: "Match", foreign_key: 'winner_id'
  has_many :losses, class_name: "Match", foreign_key: 'loser_id'
end
