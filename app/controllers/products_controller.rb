class ProductsController < ApplicationController

	def all_products
		@products = Product.ransack(params[:q])
		@total_products = @products.result.includes(:catagory, :sub_catagory)
		.paginate(page: params[:page], per_page: 10)
	end

	def new_product
		@product = Product.new
	end

	def create_product
		@product = Product.new(product_params)
		if @product.save
			redirect_to products_path
		else
			render "new_product"
		end
	end

	def show_product
		@product = Product.find(params[:id])
	end

	def edit_product
		@product = Product.find(params[:id])
	end

	def update_product
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to product_show_path
		else
			render "edit_product"
		end
	end

	def delete_product
		@product = Product.find(params[:id])
		if @product.destroy
			redirect_to products_path
		end
	end

	private

	def product_params
		params.require(:product).permit(:title, :description, :price, :picture, reviews_attributes: [:description])		
	end
end