class OrganismsController < ApplicationController
	def index
		@organisms = Organism.all
	end
	
	def show
		@organism = Organism.find(params[:id])
	end
	
	def new
		@organism = Organism.new
	end
	
	def edit
		@organism = Organism.find(params[:id])
	end
	
	def create
		@organism = Organism.new(organism_params)
		
		@organism.save
		redirect_to @organism
	end
	
	def update
		
		@organism = Organism.find(params[:id])
		
		@organism.update(organism_params)
		redirect_to organism_path
	end
	
	def destroy
		@organism = Organism.find(params[:id])
		@organism.destroy
		
		redirect_to organisms_path
	end
	
	private 
	def organism_params
		params.require(:organism).permit(:tax_org, :name)
	end
end
