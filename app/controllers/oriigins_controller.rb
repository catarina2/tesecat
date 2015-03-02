class OriiginsController < ApplicationController
	def index
		@oriigins = Oriigin.all
	end
	
	def show
		@oriigin = Oriigin.find(params[:id])
	end
	
	def new
		@oriigin = Oriigin.new
	end
	
	def edit
		@oriigin = Oriigin.find(params[:id])
	end
	
	def create
		@oriigin = Oriigin.new(oriigin_params)
		
		@oriigin.save
		redirect_to @oriigin
	end
	
	def update
		
		@oriigin = Oriigin.find(params[:id])
		
		@oriigin.update(oriigin_params)
		redirect_to oriigin_path
	end
	
	def destroy
		@oriigin = Oriigin.find(params[:id])
		@oriigin.destroy
		
		redirect_to oriigins_path
	end
	
	private 
	def oriigin_params
		params.require(:oriigin).permit(:orig_t, :lab_name)
	end
end
