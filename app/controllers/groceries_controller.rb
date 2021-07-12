class GroceriesController < ApplicationController
  def index
    @groceries = Grocery.all
  end

  def show
    @grocery = Grocery.find(params[:id])
  end

  def edit
    @grocery = Grocery.find(params[:id])
  end

  def update
    @grocery = Grocery.find(params[:id])
    @grocery.update(
      name:params[:name],
      price:params[:price],
      in_stock:params[:in_stock]
    )
    @grocery.save
  
    redirect_to "/groceries/#{@grocery.id}"
  end

  def destroy
    grocery = Grocery.destroy(params[:id])
    redirect_to '/groceries'
  end

  # def grocery_params
  #   params.permit(:name, :price, :in_stock)
  # end
end