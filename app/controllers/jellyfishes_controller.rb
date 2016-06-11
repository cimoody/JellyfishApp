class JellyfishesController < ApplicationController
	def index
		@jellyfishes = Jellyfish.all
		@jellyfish = Jellyfish.new
	end

	def show
		@jellyfish.find(params[:id])
	end

	def create
		@jellyfishes = Jellyfish.all
		@jellyfish = Jellyfish.new(jellyfish_params)
		if @jellyfish.save
			redirect_to jellyfishes_path
		else
			render :index
		end
	end

	private

	def jellyfish_params
		params.require(:jellyfish).permit(:name, :age, :kind, :poisonous)
	end
end