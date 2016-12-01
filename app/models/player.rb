class Player < ApplicationRecord
	has_many :winners, :class_name => 'Match', :foreign_key => 'winner_id'
	has_many :losers, :class_name => 'Match', :foreign_key => 'loser_id'
end
