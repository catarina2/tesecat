class Isolated < ActiveRecord::Base
	belongs_to :organism
	belongs_to :origin
	has_many :genes
	has_many :resists
	has_many :drugs, through: :resists
end
