class PublicsController < ApplicationController
  def index
    @public = Recipe.includes(:user).where(public: true)
    @recipe_food = RecipeFood.all
    @food = Food.all
  end

  # def count
  #   @recipe_food = RecipeFood.find(:recipe_id params[:])
  # end
end
