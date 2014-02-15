class PicsController < ApplicationController

	def index
		@pics = Pic.all
	end

	def new
		@pic = Pic.new
	end 

	def create
		Pic.create( pic_params )
		redirect_to pics_path

	end	

	private

	def pic_params
		params.require(:pic).permit(:title, :message, :who)
	end

end
