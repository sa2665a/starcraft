class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :winner_faction
      t.string :loser_faction
      t.time :duration
      t.datetime :date

      t.timestamps
    end

     add_reference :matches, :winner, references: :players
    add_reference :matches, :loser, references: :players
  end
end
