class ProductsController < ApplicationController
  before_action :authenticate_owner!, :except => [:index]

  def index
    @categories = Category.all
  end

  def new
    @product = Product.new
  end

  def create 
    category = Category.find_by(name: product_params['category'])
    category = category.id
    product = Product.create(name: product_params['name'], description: product_params['description'], price: product_params['price'], category_id: category)

    if product.persisted?
      redirect_to root_path, notice: "Product added to menu."
    else
      redirect_to new_product_path, notice: "Something went wrong. #{product.errors.full_messages.to_sentence}"
    end
  end

  def destroy
    item = Product.find(params[:id])
    item.destroy
    redirect_to root_path, notice: 'Item has been removed from menu.' 
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(name: params[:product][:name], description: params[:product][:description], price: params[:product][:price])
    redirect_to root_path, notice: "Item has been updated."
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :category)
  end

end
