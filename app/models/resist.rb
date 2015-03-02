class Resist < ActiveRecord::Base
	belongs_to :isolated
	belongs_to :drug
end
