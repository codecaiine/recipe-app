class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.new
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.find(params[:id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.create(recipe_foods_params)
    flash[:notice] = if @recipe_foods.save
                       'Recipe food successfully added!'
                     else
                       'Food was not added!'
                     end
    redirect_to @recipe
  end

  def update
    if @recipe_food.update(recipe_food_params)
      flash[:notice] = 'Food was successfully updated!'
      redirect_to root_path
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
    flash[:notice] = 'Food was successfully removed from the recipe!'
    redirect_to @recipe
  end

  private

  def recipe_foods_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
