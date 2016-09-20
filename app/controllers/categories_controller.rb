class CategoriesController < ApplicationController

  def show
    @category = Category.find_by(params[:id])
    @items = @category.items
  end
end
