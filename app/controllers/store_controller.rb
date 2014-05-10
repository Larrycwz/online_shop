class StoreController < ApplicationController
	def index
		@products = Product.order(:title)

	end

	def recent
		@products = Product.limit(10).order(id: :desc)
	end

end
