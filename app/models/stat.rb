class Stat < ActiveRecord::Base
	belongs_to :gene
	belongs_to :mutation
end
