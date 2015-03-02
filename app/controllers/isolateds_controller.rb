class IsolatedsController < ApplicationController
	def create
		@organism = Organism.find(params[:organism_id])
		@isolated = @organism.isolateds.create(isolated_params)
		redirect_to organism_path(@organism)
	end
	
	private
		def isolated_params
			params.require(:isolated).permit(:name, :disease, :n_samples)
		end
end
