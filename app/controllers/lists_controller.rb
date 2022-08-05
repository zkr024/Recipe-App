class ListsController < ApplicationController
  before_action :authenticate_user!

  def new
    @foods = Food.all
    @recipe_food = RecipeFood.new
  end

  def create
    recipe_food = RecipeFood.new(recipe_list_params)
    recipe_food.recipe_id = params[:recipe_id]

    if recipe_food.save
      redirect_to user_recipe_path(params[:user_id], params[:recipe_id])
    else
      puts 'error'
    end
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id]).destroy
    redirect_to user_recipe_path(params[:user_id], params[:recipe_id])
  end

  private

  def recipe_list_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
