class ImagesController < ApplicationController
	def create
		@image = Image.new(image_params)
		@image.user_id = current_user.user_id
		@image.save
	end

	private

	def image_params
		params.require(:image).permit(:image)
	end
end
