class AddLoserReferenceToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :loser, references: :players
  end
end
